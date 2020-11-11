class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.html_css
    where(subtitle: 'HTML & CSS')
  end

  scope :html_css_items_only, -> { where(subtitle: 'HTML & CSS') }

end
