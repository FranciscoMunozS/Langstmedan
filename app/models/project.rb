class Project < ApplicationRecord
  extend Enumerize

  has_many :observations

  enumerize :commune, in: [:corral, :futrono, :la_union, :lago_ranco, :lanco, :mariquina, :paillaco, :panguipulli, :rio_bueno, :valdivia]
end
