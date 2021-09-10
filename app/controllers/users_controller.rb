class UsersController < ApplicationController
  def create
    user = User.new(user_params)
    if user.save
      render json: { data: user }, status: :created
    else
      render json: { data: user.errors }, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :admin)
  end
end
