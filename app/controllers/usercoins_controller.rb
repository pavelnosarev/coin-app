class UsercoinsController < ApplicationController
  def index
    usercoins = UserCoin.all
    render json: usercoins.as_json
  end

  def update
    usercoin_id = params["id"]
    usercoin = UserCoin.find_by(id: usercoin_id)
    usercoin.status = params["status"] || usercoin.status
    usercoin.user_id = params["user_id"] || usercoin.user_id
    usercoin.coin_id = params["coin_id"] || usercoin.coin_id
    if usercoin.save
      render json: usercoin.as_json
    else
      render json: { errors: coin.errors.full_messages },
             status: 422
    end
  end
end
