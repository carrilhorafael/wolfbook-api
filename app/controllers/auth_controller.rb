class AuthController < ApplicationController
  def sign_up
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
    
  end
  def login
    @user = User.find_by(email: params[:user][:email])
    @user = @user&.authenticate(params[:user][:password])
    if @user
      token = JsonWebToken.encode(user_id: @user.id)
      render json: {token: token, user: UserSerializer.new(@user)}
    else
      render json: {error: 'Falha no login'}, status: 401
    end
  end
  private
    def user_params
      params.require(:user).permit(:name, :email, :gender, :birthdate, :password, :password_confirmation)
    end
    
end
