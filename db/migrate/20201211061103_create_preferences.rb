class CreatePreferences < ActiveRecord::Migration[6.0]
  def change
    create_table :preferences do |t|
      t.integer :zip
      t.string :color
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
