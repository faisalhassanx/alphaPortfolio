class Portfolio < ApplicationRecord
  validates :title,       presence: true
  validates :body,        presence: true, length: { in: 100..1000 }
  validates :main_image,  presence: true
  validates :thumb_image, presence: true
  
  def self.angular
    where(subtitle: 'Angular')
  end
  
  scope :ruby_on_rails, -> { where(subtitle: 'Ruby on Rails') }
end
