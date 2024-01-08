json.extract! p_product, :id, :title, :description, :image_url, :price, :created_at, :updated_at
json.url p_product_url(p_product, format: :json)
