class AddObservationsDetailToObservation < ActiveRecord::Migration[5.1]
  def change
    add_column :observations, :observation_detail, :text
  end
end
