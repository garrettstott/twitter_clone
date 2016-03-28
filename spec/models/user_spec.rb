require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do 
    it {should validate_presence_of :first_name}
    it {should validate_presence_of :last_name}
    it {should validate_presence_of :username}
  end

  describe 'validates uniqueness of username' do 
    before(:each) do 
      FactoryGirl.create(:user)
    end
    it {should validate_uniqueness_of :username}
  end

  describe 'associations' do 
    it {should have_many :tweets}
    it {should have_one :profile}
  end

  describe '#full_name' do 
    it 'concatenates first and last name' do 
      user = FactoryGirl.create(:user) 
      expect(user.full_name).to eq("#{user.first_name} #{user.last_name}")
    end
  end
end
