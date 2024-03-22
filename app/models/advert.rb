class Advert < ApplicationRecord
has_many :line_items

before_destroy :ensure_not_referenced_by_any_line_item

validates :name, :product, :description, :price, :image_url, presence: true

#validates :price, numericality: {greater_than_or_equal_to: 0.01}


  



def self.ransackable_attributes(auth_object = nil)   
	["name", "product", "description", "email"]
end
def self.ransackable_associations(auth_object = nil)
    []
end


private
 #ensure that there are no line items referencing this product
 def ensure_not_referenced_by_any_line_item
  unless line_items.empty?
   errors.add(:base, 'Line Items present')
   throw :abort
  end
 end







end
