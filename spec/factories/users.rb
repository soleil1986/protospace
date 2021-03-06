FactoryGirl.define do

  factory :user do
    username {Faker::Name.name}
    member {Faker::Name.title}
    profile {Faker::Name.title}
    works {Faker::Name.title}
    email {Faker::Internet.email}
    password              "password"
    avatar { Rack::Test::UploadedFile.new("spec/files/MtFuji.jpg", "image/jpg") }
  end

end
