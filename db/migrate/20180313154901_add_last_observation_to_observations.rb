class AddLastObservationToObservations < ActiveRecord::Migration[5.1]
  def change
    add_column :observations, :last_observation, :text
  end
end
