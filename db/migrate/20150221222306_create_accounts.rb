class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name, null: false
      t.decimal :starting_amount, precision: 16, scale: 2, null: false

      t.belongs_to :month, index: true

      t.timestamps null: false
    end
  end
end
