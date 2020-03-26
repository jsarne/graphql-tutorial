class Link < ApplicationRecord
  belongs_to :user
  has_many :votes

  validates :url, presence: true, length: {minimum: 5}

  def vote_count
    votes.count
  end
end
