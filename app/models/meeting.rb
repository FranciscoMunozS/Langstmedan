class Meeting < ApplicationRecord
  extend Enumerize

  belongs_to :user

  enumerize :commune, in: [:corral, :futrono, :la_union, :lago_ranco, :lanco, :mariquina, :paillaco, :panguipulli, :rio_bueno, :valdivia]
end
