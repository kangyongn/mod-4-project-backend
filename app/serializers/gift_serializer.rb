class GiftSerializer < ActiveModel::Serializer
  attributes :id, :note, :img, :sender_id, :user_id, :date

  belongs_to :user
end
