class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :image, :name, :description
end
