class AddOtherBackgroundToObservations < ActiveRecord::Migration[5.1]
  def change
    add_column :observations, :other_background, :text
  end
end
