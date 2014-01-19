class ContactController < ApplicationController
layout 'contact'
	def index
		@message = Message.new
	end
end
