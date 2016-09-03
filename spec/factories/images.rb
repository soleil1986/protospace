FactoryGirl.define do

  factory :image do
    image { Rack::Test::UploadedFile.new("spec/files/MtFuji.jpg", "image/jpg") }
  end
end
