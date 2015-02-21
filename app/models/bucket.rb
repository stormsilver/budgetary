class Bucket < ActiveRecord::Base
  belongs_to :month, inverse_of: :bucket
  belongs_to :category, inverse_of: :bucket
  has_many :line_items, as: :owner

  validates_presence_of :month, :name, :starting_amount, :budget_amount, :category
end
