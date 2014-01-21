class Garment < ActiveRecord::Base
	validates :style, presence: true
	validates :period, presence: true
	validates :available_size, presence: true
	validates :price, presence: true
	validates :description, presence: true

	#attr_accessible :image1

	belongs_to :admin

	has_attached_file :image1, styles: {
		square: '300x300>',
		large: '600x600>'
	}

	has_attached_file :image2, styles: {
		square: '300x300>',
		large: '600x600>'
	}

	has_attached_file :image3, styles: {
		square: '300x300>',
		large: '600x600>'
	}

	has_attached_file :image4, styles: {
		square: '300x300>',
		large: '600x600>'
	}


end
