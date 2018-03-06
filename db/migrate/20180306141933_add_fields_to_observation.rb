class AddFieldsToObservation < ActiveRecord::Migration[5.1]
  def change
    add_column :observations, :visit_date, :date
    add_column :observations, :visit_booklet, :string
    add_column :observations, :report_made, :string
    add_column :observations, :reunion_date, :date
    add_column :observations, :reunion_place, :string
    add_column :observations, :reunion_commune, :string
    add_column :observations, :technical_date, :date
    add_column :observations, :technical_commune, :string
  end
end
