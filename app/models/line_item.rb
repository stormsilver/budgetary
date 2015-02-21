class LineItem < ActiveRecord::Base
  belongs_to :month, inverse_of: :line_items
  belongs_to :account, inverse_of: :line_items
  belongs_to :user, inverse_of: :line_items
  belongs_to :owner, polymorphic: true, inverse_of: :line_items

  validates_presence_of :month, :account, :owner, :user, :amount, :description
end
