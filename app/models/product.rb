class Product < ApplicationRecord
	validates :name, presence: true
	validates :quantity, presence: true
	#validates_presence_of :name, :quantity //Mesma função das linhas de cima
end
