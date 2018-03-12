# projects
#  t.string  :name
#  t.string  :commune
#  t.string  :origin_visit
#  t.date    :date_visit
#  t.string  :line
#  t.string  :idi
#  t.integer :visit_id
#  t.string  :visit_booklet
#  t.string  :report_made

class Project < ApplicationRecord
  extend Enumerize

  belongs_to :user

  has_many :observations

  validates :idi, uniqueness: true

  enumerize :commune, in: [:corral, :futrono, :la_union, :lago_ranco, :mafil, :lanco, :mariquina, :paillaco, :panguipulli, :rio_bueno, :valdivia, :los_lagos]

  enumerize :line, in: [:ley2012, :ley2013, :ley2014, :ley2015, :ley2017, :participacion2014, :participacion2015, :participacion2017 ]


  enum status: {  draft: 0, published: 1, pending: 2, warned: 3, normal: 4, completed: 5, closed: 6 } do

    event :begin do
      transition :draft => :published
    end

    event :first_alert do
      transition [:published, :draft] => :pending
    end

    event :second_alert do
      transition [:published, :draft, :pending] => :warned
    end

    event :normal_status do
      transition [:draft, :published, :pending, :warned] => :normal
    end

    event :done do
      transition [:draft, :published, :pending, :warned, :normal] => :completed
    end

    event :finished do
      transition all - [:closed] => :closed
    end
  end

  attr_accessor :state_event

  after_save :trigger_state, if: :state_event


  private

  def self.notification_counter
    Project.where(:status => "draft")
  end

  def trigger_state
    send(state_event) if send(:"can_#{state_event}?")
  end
end
