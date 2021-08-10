class UserCoinSerializer < ActiveModel::Serializer
  attributes :id, :coin_id, :user_id, :coin, :status
  belongs_to :coin
end
