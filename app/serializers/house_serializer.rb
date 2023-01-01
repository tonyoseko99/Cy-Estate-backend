class HouseSerializer < ActiveModel::Serializer
  attributes :id, :title, :address, :price, :bedrooms, :description, :image
  has_many :reviews

end
