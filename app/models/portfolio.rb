class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.html_css
    where(subtitle: 'HTML & CSS')
  end

  scope :html_css_items_only, -> { where(subtitle: 'HTML & CSS') }

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= "https://via.placeholder.com/450"
    self.thumb_image ||= "https://via.placeholder.com/150"
  end
end
