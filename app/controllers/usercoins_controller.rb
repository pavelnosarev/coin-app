class UsercoinsController < ApplicationController
  before_action :authenticate_user

  def index
    usercoins = UserCoin.where(user_id: current_user.id)
    render json: usercoins
  end

  def update
    usercoin_id = params["id"]
    usercoin = UserCoin.find_by(id: usercoin_id)
    usercoin.status = params["status"] || usercoin.status
    if usercoin.save
      render json: usercoin.as_json
    else
      render json: { errors: coin.errors.full_messages },
             status: 422
    end
  end

  def show
    usercoin_id = params["id"]
    usercoin = UserCoin.find(usercoin_id)
    render json: usercoin
  end

  def create
    usercoin = UserCoin.new(
      coin_id: params["coin_id"],
      status: params["status"] || false,
      user_id: current_user.id,
    )
    if usercoin.save
      render json: usercoin
    else
      render json: { errors: usercoin.errors.full_messages },
             status: 422
    end
  end

  def destroy
    usercoin_id = params[:id]
    usercoin = UserCoin.find_by(id: usercoin_id)
    usercoin.destroy
    render json: { message: "Coin successfully deleted from list!" }
  end
end
