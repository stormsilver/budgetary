class Month < ActiveRecord::Base
  has_many :categories, inverse_of: :month
  has_many :buckets, inverse_of: :month
  has_many :line_items, inverse_of: :month
  has_many :accounts, inverse_of: :month
  has_many :paychecks, inverse_of: :month

  validates_presence_of :date
end
