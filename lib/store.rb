class Store < ActiveRecord::Base
  has_many :employees
  validates :annual_revenue, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :name, presence: true, length: { minimum: 3 }
end
