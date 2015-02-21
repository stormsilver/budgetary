class Paycheck < ActiveRecord::Base
  belongs_to :month, inverse_of: :paychecks
  has_many :line_items, as: :owner

  validates_presence_of :name, :month, :planned_amount
end
