class Garment < ActiveRecord::Base
	validates :style, presence: true
	validates :period, presence: true
	validates :available_size, presence: true
	validates :price, presence: true
	validates :description, presence: true

	belongs_to :admin

end
