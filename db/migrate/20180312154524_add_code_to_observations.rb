class AddCodeToObservations < ActiveRecord::Migration[5.1]
  def change
    add_column :observations, :code, :integer
  end
end
