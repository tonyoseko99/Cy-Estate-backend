class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :house_id, :text
end
