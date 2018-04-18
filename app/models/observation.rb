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
end
