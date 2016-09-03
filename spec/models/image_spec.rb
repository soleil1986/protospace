require 'rails_helper'

describe Image do
  context 'associations' do
    it { should belong_to(:prototype) }
  end

  describe '#create' do
    context 'enums' do
      it { is_expected.to define_enum_for(:roll) }
    end

    context 'with valid attributes' do
      it "has a valid factory" do
        image = build(:image)
        expect(image).to be_valid
      end
    end

    context 'without valid attributes' do
      it "has the wrong image format" do
        image = build(:image, image: Rack::Test::UploadedFile.new("spec/files/MtFuji.jpn", "image/jpn"))
        image.valid?
        expect(image.errors[:image]).to include("You are not allowed to upload \"jpn\" files, allowed types: jpg, jpeg, gif, png", "can't be blank")
      end
    end
  end
end
