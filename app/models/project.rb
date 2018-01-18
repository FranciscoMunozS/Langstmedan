class Project < ApplicationRecord
  extend Enumerize

  belongs_to :user

  has_many :observations

  enumerize :commune, in: [:corral, :futrono, :la_union, :lago_ranco, :lanco, :mariquina, :paillaco, :panguipulli, :rio_bueno, :valdivia]
end
