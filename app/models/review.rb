class Review
  include Mongoid::Document
  include Mongoid::Timestamps
  validates :rating, presence: true#, message: 'Please provide rating to the post.' 
  field :content, type: String
  field :rating, type: Integer
  field :references, type: Post
  belongs_to :post
  belongs_to :user
end
