class CreatePreferences < ActiveRecord::Migration[6.0]
  def change
    create_table :preferences do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.boolean :theme
      t.boolean :date_format
      t.boolean :time_format

      t.timestamps
    end
  end
end
