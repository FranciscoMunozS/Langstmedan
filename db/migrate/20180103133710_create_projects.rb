class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string  :idi
      t.string  :name
      t.string  :commune
      t.string  :line

      t.timestamps
    end
  end
end
