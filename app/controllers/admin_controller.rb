class AdminController < ApplicationController
  # before_action :authenticate_admin
  # def update
  #   user_id = params["id"]
  #   user = User.find_by(id: user_id)
  #   user.admin = params["admin"]
  #   if user.save
  #     render json: user.as_json
  #   else
  #     render json: { errors: user.errors.full_messages },
  #            status: 422
  #   end
  # end
end
