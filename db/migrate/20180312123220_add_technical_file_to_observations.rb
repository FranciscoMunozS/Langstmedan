class AddTechnicalFileToObservations < ActiveRecord::Migration[5.1]
  def change
    add_column :observations, :technical_file, :string
  end
end
