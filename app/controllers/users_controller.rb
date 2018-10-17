class UsersController < ApplicationRecord
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    # if user.save
    #   redirect_to "/users/#{user.id}"
    # else
    #   render :new
    # end
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end

end
