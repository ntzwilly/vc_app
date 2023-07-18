class LocationSerializer < ActiveModel::Serializer
  attributes :id, :street, :city, :state, :country, :latitude, :longitude
end
