class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    # Commented out the instantiation of the user object
    # @user = User.new(user_params)
    # Add your code for later use here

    if @user.save
      redirect_to new_user_path, notice: "User created successfully!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
