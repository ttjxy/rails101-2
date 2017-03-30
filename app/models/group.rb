class Group < ApplicationRecord
  belongs_to :user
  has_many :posts
  validates :title, presence: true
  scope :recent, -> {order("created_at DESC")}
  has_many :group_relationships
  has_many :member, through: :group_relationships, source: :user
end
