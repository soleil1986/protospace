require 'rails_helper'

describe Prototype do
  describe 'associations' do
    context 'with images' do
      it { should have_many(:images).dependent(:destroy) }
    end

    context 'with comments' do
      it { should have_many(:comments).dependent(:destroy) }
    end

    context 'with likes' do
      it { should have_many(:likes).dependent(:destroy) }
    end
  end

  describe 'validations' do
    describe 'with valid attributes' do
      it "has a valid factory" do
        prototype = build(:prototype)
        expect(prototype).to be_valid
      end
    end

    context 'without valid attributes' do
      it "is missing a title" do
        prototype = build(:prototype, title: nil)
        prototype.valid?
        expect(prototype.errors[:title]).to include("can't be blank")
      end

      it "is missing a catchcopy" do
        prototype = build(:prototype, catchcopy: nil)
        prototype.valid?
        expect(prototype.errors[:catchcopy]).to include("can't be blank")
      end

      it "is missing a concept" do
        prototype = build(:prototype, concept: nil)
        prototype.valid?
        expect(prototype.errors[:concept]).to include("can't be blank")
      end
    end
  end

  describe 'main' do
    it 'consistent' do
      prototype = build(:prototype)
      expect(prototype.main).to eq(prototype.images.main.first)
    end
  end

  describe 'sub' do
    it 'consistent' do
      prototype = build(:prototype)
      expect(prototype.sub).to eq(prototype.images.sub)
    end
  end
end
