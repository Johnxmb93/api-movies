class ActorSerializer < ActiveModel::Serializer
  attributes :id, :actor_age, :first_name
  belongs_to :movie
end
