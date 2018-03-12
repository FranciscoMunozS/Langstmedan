class AddReunionFileToObservations < ActiveRecord::Migration[5.1]
  def change
    add_column :observations, :reunion_file, :string
  end
end
