class MileSerializer < ActiveModel::Serializer
  attributes :id, :time, :user_id, :created_at
end
