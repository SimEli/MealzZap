class UsersController < ApplicationController
skip_before_action :authenticate_user!, only: [:index]

  # def index
  #   @users = User.all
  # end

  # def new
  #   @user = User.new
  # end

# private

#   def user_params
#     params.require(:user).permit(:username, :email, :password, :password_confirmation)
#   end
end

# :name, :last_name, :address, :post_number, :city, :country_id, :mobile