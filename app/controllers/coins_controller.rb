class CoinsController < ApplicationController
  #get index
  def index
    coins = Coin.all
    render json: coins.as_json
  end

  #get :id show
  def show
    coin_id = params["id"]
    coin = Coin.find(coin_id)
    render json: coin
  end

  def create
    coin = Coin.new(
      metal: params["metal"],
      description: params["description"],
      denomination: params["denomination"],
      mint: params["mint"],
      year: params["year"],
      image: params["image"],
    )
    if coin.save
      render json: coin.as_json
    else
      render json: { errors: coin.errors.full_messages },
             status: 422
    end
  end

  def update
    coin_id = params["id"]
    coin = Coin.find_by(id: coin_id)

    coin.metal = params["metal"] || coin.metal
    coin.description = params["description"] || coin.description
    coin.denomination = params["denomination"] || coin.denomination
    coin.mint = params["mint"] || coin.mint
    coin.image = params["image"] || coin.image

    if coin.save
      render json: coin.as_json
    else
      render json: { errors: coin.errors.full_messages },
             status: 422
    end
  end

  def destroy
    coin_id = params[:id]
    coin = Coin.find_by(id: coin_id)
    coin.destroy
    render json: { message: "Coin successfully deleted!" }
  end
end
