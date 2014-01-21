class Admins::DashboardController < ApplicationController
  layout 'admin'
  before_action :authenticate_admin!
  
  def index
    @number_of_messages = Message.count
    @number_of_users = User.count
    @number_of_garments = Garment.count
    @number_of_subscriptions = Subscription.count
    @all_users = User.all
    @all_messages = Message.all
    @all_garments = Garment.all
    @all_subscriptions = Subscription.all
  end
end