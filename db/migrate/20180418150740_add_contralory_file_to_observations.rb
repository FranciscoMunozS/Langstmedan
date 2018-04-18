class AddContraloryFileToObservations < ActiveRecord::Migration[5.1]
  def change
    add_column :observations, :contralory_file, :string
  end
end
