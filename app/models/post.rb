class Post
  include Mongoid::Document
  include Mongoid::Timestamps
  mount_uploader :avatar, AvatarUploader

  validates :title, presence: true, uniqueness: true
  field :title, type: String
  field :detail, type: String
  field :avatar, type: String
  has_many :reviews
  belongs_to :user
end
