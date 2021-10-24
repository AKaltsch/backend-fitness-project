class HikeSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :lat, :lng, :image_url, :user_id
end
