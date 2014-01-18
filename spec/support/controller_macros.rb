module ControllerMacros
  def login_as_admin
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:admin]
      @admin = FactoryGirl.create(:admin)
      #=@admin = Admin.create(email: "abc@abc.com", password: "abc")
      sign_in @admin
    end
  end
end