FactoryGirl.define do
  factory :post do
    caption "Silly dog #corgi"
    image Rack::Test::UploadedFile.new(Rails.root + "spec/files/images/corgi.jpg", "image/jpg")
  end
end
