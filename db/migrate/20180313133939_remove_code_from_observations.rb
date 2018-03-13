class RemoveCodeFromObservations < ActiveRecord::Migration[5.1]
  def change
    remove_column :observations, :code, :integer
  end
end
