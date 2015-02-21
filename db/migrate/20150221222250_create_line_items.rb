class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.decimal :amount, precision: 16, scale: 2, null: false
      t.string :description, null: false

      t.belongs_to :month, index: true, null: false
      t.belongs_to :account, index: true, null: false
      t.belongs_to :user, null: false
      t.belongs_to :owner, polymorphic: true

      t.timestamps null: false
    end
  end
end
