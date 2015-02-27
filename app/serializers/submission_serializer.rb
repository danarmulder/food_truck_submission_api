class SubmissionSerializer < ActiveModel::Serializer
  attributes :id, :name, :link, :description, :latitude, :longitude, :day, :starttime, :endtime, :verified
end
