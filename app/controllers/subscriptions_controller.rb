class SubscriptionsController < ApplicationController
  # before_action :set_subscription, only: [:create, :destroy]
  # GET /messages
  # GET /messages.json
  def index
    @subscriptions = Subscription.all
  end

  # GET /messages/1
  # GET /messages/1.json
  def show
  end

  # GET /messages/new
  def new
    @subscription = Subscription.new
  end

  # GET /messages/1/edit
  def edit
  end

  # POST /subscriptions
  # POST /subscriptions.json
  def create
    @subscription = Subscription.new(subscription_params)

    respond_to do |format|
      if @subscription.save
        format.html { redirect_to root_path, notice: 'You have successfully subscribed to Pixie!' }
        format.json { render action: 'show', status: :created, location: @subscription}
      else
        format.html { render action: 'new', notice: 'You have not subscribed to Pixie yet!' }
        format.json { render json: @subscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subscriptions/1
  # DELETE /subscriptions/1.json
  #**********************************
  def destroy

    @subscription.destroy
      respond_to do |format|
        format.html { redirect_to admins_path }
        format.json { head :no_content }
    end
  end
  #*************************************

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_subscription
    #   @subscription = Subscription.find(params[:id])
    # end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subscription_params
      params.require(:subscription).permit(:email)
    end
end
