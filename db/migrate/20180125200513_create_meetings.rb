class CreateMeetings < ActiveRecord::Migration[5.1]
  def change
    create_table :meetings do |t|
      t.string :commune
      t.text :observation
      t.date :observation_date
      t.date :compliance_date
      t.boolean :meet

      t.timestamps
    end
  end
end
