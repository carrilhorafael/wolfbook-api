class SessionController < ApplicationController
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
end
