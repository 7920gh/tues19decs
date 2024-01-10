class PProduct < ApplicationRecord

  validates :title, :description, :image_url, presence: true


end
