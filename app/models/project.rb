class Project < ApplicationRecord
  extend Enumerize

  has_many :observations

  enumerize :commune, in: [:corral, :futrono, :union, :ranco, :lanco, :mariquina, :paillaco, :panguipulli, :bueno, :valdivia]
end
