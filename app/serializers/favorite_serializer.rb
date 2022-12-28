class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :house_id
end
