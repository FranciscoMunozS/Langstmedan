class Observation < ApplicationRecord
  extend Enumerize

  belongs_to :project

  enumerize :reunion_commune, in: [:corral, :futrono, :la_union, :lago_ranco, :mafil, :lanco, :mariquina, :paillaco, :panguipulli, :rio_bueno, :valdivia, :los_lagos]

  enumerize :technical_commune, in: [:corral, :futrono, :la_union, :lago_ranco, :mafil, :lanco, :mariquina, :paillaco, :panguipulli, :rio_bueno, :valdivia, :los_lagos]

  mount_uploader :report_made, FileUploader
  mount_uploader :visit_booklet, FileUploader
  mount_uploader :reunion_file, FileUploader
  mount_uploader :technical_file, FileUploader
  mount_uploader :contralory_file, FileUploader

  validates_integrity_of :report_made
  validates_integrity_of :visit_booklet
  validates_integrity_of :reunion_file
  validates_integrity_of :technical_file
  validates_integrity_of :contralory_file
end
