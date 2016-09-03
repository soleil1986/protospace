require 'rails_helper'

describe User do
  describe '#create' do
    describe 'with valid attributes' do
      it "is valid with all information" do
        user = build(:user)
        expect(user).to be_valid
      end
    end

    describe 'without valid attributes' do
      it "is invalid without a username" do
        user = build(:user, username: "")
        user.valid?
        expect(user.errors[:username]).to include("can't be blank")
      end

      it "is invalid without a email" do
        user = build(:user, email: nil)
        user.valid?
        expect(user.errors[:email]).to include("can't be blank")
      end

      it "is invalid without a password" do
        user = build(:user, password: nil)
        user.valid?
        expect(user.errors[:password]).to include("can't be blank")
      end

      it "is invalid without a avatar" do
        user = build(:user, avatar: nil)
        user.valid?
        expect(user.errors[:avatar]).to include("can't be blank")
      end

      it "is invalid without a member" do
        user = build(:user, member: nil)
        user.valid?
        expect(user.errors[:member]).to include("can't be blank")
      end

      it "is invalid without a profile" do
        user = build(:user, profile: nil)
        user.valid?
        expect(user.errors[:profile]).to include("can't be blank")
      end

      it "is invalid without a works" do
        user = build(:user, works: nil)
        user.valid?
        expect(user.errors[:works]).to include("can't be blank")
      end

      it "is invalid with a duplicate email address" do
        user = create(:user)
        another_user = build(:user, email: user.email)
        another_user.valid?
        expect(another_user.errors[:email]).to include("has already been taken")
      end

      it "is invalid with a password that has less than 5 characters " do
        user = build(:user, password: "00000")
        user.valid?
        expect(user.errors[:password][0]).to include("is too short")
      end
    end
  end
end
