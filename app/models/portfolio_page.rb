class PortfolioPage < ApplicationRecord

  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.angular
    where(subtitle: 'Angular JS')
  end

  scope :ruby_on_rails, -> { where(subtitle: 'Ruby on Rails') }

end
