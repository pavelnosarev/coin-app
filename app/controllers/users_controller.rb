class UsersController < ApplicationController
  def create
    user = User.new(
      username: params[:username],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  # before_action :authenticate_admin

  def update
    user_id = params["id"]
    user = User.find_by(id: user_id)
    user.admin = params["admin"]
    if user.save
      render json: user.as_json
    else
      render json: { errors: user.errors.full_messages },
             status: 422
    end
  end
end
