require 'spec_helper'

describe HomeController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  # describe "GET 'index'" do
  #   it "should returns three latest added garments" do
  #   	get 'index'
    	

end
