class AddContraloryDateToObservations < ActiveRecord::Migration[5.1]
  def change
    add_column :observations, :contralory_date, :date
  end
end
