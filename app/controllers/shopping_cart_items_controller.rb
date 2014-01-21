class ShoppingCartItemsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_shopping_cart_item, only: [:show, :edit, :update, :destroy]

  # GET /shopping_cart_items
  # GET /shopping_cart_items.json
  def index
    @shopping_cart_items = current_user.shopping_cart_items
  end

  # GET /shopping_cart_items/1
  # GET /shopping_cart_items/1.json
  def show
  end

  # GET /shopping_cart_items/new
  def new
    @shopping_cart_item = ShoppingCartItem.new
  end

  # GET /shopping_cart_items/1/edit
  def edit
  end

  # POST /shopping_cart_items
  # POST /shopping_cart_items.json
  def create
    @shopping_cart_item = ShoppingCartItem.new(shopping_cart_item_params)
    if user_signed_in?
      @shopping_cart_item.user_id = current_user.id
    else
      @shopping_cart_item.user_id = nil
    end
    @garment = @shopping_cart_item.garment
    @shopping_cart_item.quantity = 1
    

    respond_to do |format|
      if @shopping_cart_item.save
        format.html { redirect_to shopping_cart_items_path, notice: 'Shopping cart item was successfully created.' }
        format.json { render action: 'show', status: :created, location: @shopping_cart_item }
      else
        format.html { render action: 'new' }
        format.json { render json: @shopping_cart_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shopping_cart_items/1
  # PATCH/PUT /shopping_cart_items/1.json
  def update
    respond_to do |format|
      if @shopping_cart_item.update(shopping_cart_item_params)
        format.html { redirect_to @shopping_cart_item, notice: 'Shopping cart item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @shopping_cart_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shopping_cart_items/1
  # DELETE /shopping_cart_items/1.json
  def destroy
    @shopping_cart_item.destroy
    respond_to do |format|
      format.html { redirect_to shopping_cart_items_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shopping_cart_item
      @shopping_cart_item = ShoppingCartItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shopping_cart_item_params
      if params[:shopping_cart_item].present?
        params.require(:shopping_cart_item).permit(:user_id, :garment_id, :quantity)
      end
    end
end
