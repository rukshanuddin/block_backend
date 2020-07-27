class Api::V1::AuthController < ApplicationController

  def create
      user = User.find_by(email: params[:email])
      if user && user.authenticate(params[:password])
          render json: { token: issue_token({user_id: user.id}), user: UserSerializer.new(user) }
      else
          render json: { errors: ["Invalid"] }, status: :not_found
      end
  end

  def validate
      if @current_user
          render json: { token: issue_token({user_id: @current_user.id}), user: UserSerializer.new(@current_user)}
      else
          render json: { errors: ["User Not Found"] }, status: :not_found
      end
  end

  private


end