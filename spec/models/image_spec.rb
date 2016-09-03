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
  end
end
