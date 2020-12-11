class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.integer :zip

      t.timestamps
    end
  end
end
