class Portfolio < ApplicationRecord
  has_many :technologies
  include Placeholder
  validates :title,       presence: true
  validates :body,        presence: true, length: { in: 100..1000 }
  validates :main_image,  presence: true
  validates :thumb_image, presence: true
  
  def self.angular
    where(subtitle: 'Angular')
  end
  
  scope :ruby_on_rails, -> { where(subtitle: 'Ruby on Rails') }
  
  after_initialize :set_defaults
  
  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: '700', width: '400')
    self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
  end
  
end
