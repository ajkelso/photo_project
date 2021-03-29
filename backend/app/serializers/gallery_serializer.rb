class GallerySerializer < ActiveModel::Serializer
  attributes :id, :title, :goal
  belongs_to :user
end
