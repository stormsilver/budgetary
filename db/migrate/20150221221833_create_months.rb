class CreateMonths < ActiveRecord::Migration
  def change
    create_table :months do |t|
      t.date :date, index: true, null: false

      t.timestamps null: false
    end
  end
end
