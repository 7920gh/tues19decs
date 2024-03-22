require "test_helper"

class AdvertTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "adverts attributes must not be empty" do
    advert = Advert.new
    assert 	advert.invalid?
	assert advert.errors[:name].any?
	assert advert.errors[:product].any?
	assert advert.errors[:description].any?
	assert advert.errors[:price].any?
	assert advert.errors[:image_url].any?
  
  
end
end
