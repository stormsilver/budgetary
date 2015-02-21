class Category < ActiveRecord::Base
  belongs_to :month, inverse_of: :categories
  has_many :buckets, inverse_of: :category

  validates_presence_of :month, :name
end
