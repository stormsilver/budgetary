class CreatePaychecks < ActiveRecord::Migration
  def change
    create_table :paychecks do |t|
      t.string :name, null: false
      t.decimal :planned_amount, precision: 16, scale: 2, null: false

      t.belongs_to :month, null: false, index: true

      t.timestamps null: false
    end
  end
end
