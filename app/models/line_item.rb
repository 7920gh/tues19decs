class LineItem < ApplicationRecord
  belongs_to :advert
  belongs_to :cart
end
