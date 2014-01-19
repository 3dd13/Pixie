class Admins::DashboardController. < ApplicationController
  layout 'admin'
  before_action :authenticate_admin!
  
  def index
    @number_of_messages = Message.count
    @number_of_users = User.count
    @number_of_garments = Garment.count
  end
end