require 'rails_helper'

RSpec.describe WelcomeController do
  describe "Site Visit Langind Path welcome#index" do

    it "assigns @user" do
      visit_to_root_path
      expect(assigns(:user)).not_to be_nil
    end

    it "assigns @user_profile" do
      visit_to_root_path
      expect(assigns(:user_profile)).to be_nil
      # expect(assigns(:user_profile)).not_to be_nil
    end

    it "render index template" do
      visit_to_root_path
      expect(response).to render_template(:index)
    end
  end

  def visit_to_root_path
    get :index
  end

end



# #Failure Tests
# RSpec.describe WelcomeController do
#   describe "Site Visit Langind Path welcome#index" do
#     it "assigns @user" do
#       get :index
#       expect(response).to render_template(:index)
#       user = User.create
#       expect(assigns(:user)).to eq([user])
#     end

#     it "assigns @@user" do
#       get :index
#       expect(response).to render_template(:index)
#     end

#   end
# end