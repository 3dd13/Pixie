class ContactController < ApplicationController
layout 'contact'
	def index
		@message = Message.new
		# about_array = [Product, Shipping, Return Policy]
	end
end
