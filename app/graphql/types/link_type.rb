module Types
  class LinkType < Types::BaseObject
    field :id, ID, null: false
    field :url, String, null: false
    field :description, String, null: false
    field :posted_by, UserType, null: false, method: :user
    field :votes, Types::VoteType.connection_type, null: false
    field :vote_count, Integer, null: false
  end
end
