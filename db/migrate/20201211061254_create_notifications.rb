class CreateNotifications < ActiveRecord::Migration[6.0]
  def change
    create_table :notifications do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :event
      t.string :notes
      t.date :date

      t.timestamps
    end
  end
end
