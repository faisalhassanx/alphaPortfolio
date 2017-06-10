class Topic < ApplicationRecord
  validate :title, presence: true
  has_many :blogs
end
