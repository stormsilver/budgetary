class Account < ActiveRecord::Base
  belongs_to :month, inverse_of: :accounts
  has_many :line_items, inverse_of: :account

  validates_presence_of :name, :starting_amount, :month
end
