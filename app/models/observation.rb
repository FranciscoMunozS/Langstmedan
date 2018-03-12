class Observation < ApplicationRecord
  belongs_to :project

  mount_uploader :report_made, FileUploader
  mount_uploader :visit_booklet, FileUploader
  mount_uploader :reunion_file, FileUploader
  mount_uploader :technical_file, FileUploader
end
