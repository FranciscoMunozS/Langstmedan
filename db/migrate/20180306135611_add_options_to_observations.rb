class AddOptionsToObservations < ActiveRecord::Migration[5.1]
  def change
    add_column :observations, :options, :string
  end
end
