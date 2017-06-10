class Blog < ApplicationRecord
  enum status: { draft: 0, published: 1 }
  extend FriendlyId
  friendly_id :title, use: :slugged
  
  validates :title, presence: true, length: { in: 10..150 }
  validates :body,  presence: true, length: { in: 100..1000 }
end
