class Post < ApplicationRecord
  belongs_to :user
  validates_presence_of :title, :body
  has_many :comments, dependent: :destroy
  scope :published, -> { where(published_at: nil).or(where("published_at <= ?", DateTime.now)) }
  has_rich_text :body
end
