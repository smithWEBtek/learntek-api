class ActivitySerializer < ActiveModel::Serializer
	attributes :id, :name, :description, :status, :created_at
	has_many :track_activities
	has_many :tracks, through: :track_activities
end
