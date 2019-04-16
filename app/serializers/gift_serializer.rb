class GiftSerializer < ActiveModel::Serializer
  attributes :id, :note, :img, :sender_id, :user_id, :date, :song, :opened

  belongs_to :user
end
