class Product < ApplicationRecord
	validates :name, presence: true, uniqueness: true, length: {minimum: 5 ,maximum: 60}
	validates :description, presence: true, length: { minimum: 5	}
	validates :stock, presence: true
	validates :price, presence: true
end
