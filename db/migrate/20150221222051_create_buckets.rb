class CreateBuckets < ActiveRecord::Migration
  def change
    create_table :buckets do |t|
      t.string :name, null: false
      t.decimal :starting_amount, precision: 16, scale: 2, null: false
      t.decimal :budget_amount, precision: 16, scale: 2, null: false

      t.belongs_to :month, null: false, index: true
      t.belongs_to :category, null: false

      t.timestamps null: false
    end
  end
end
