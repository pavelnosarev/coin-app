class CoinSerializer < ActiveModel::Serializer
  attributes :id, :metal, :description, :denomination, :mint, :year, :image
end
