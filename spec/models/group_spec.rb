require 'rails_helper'

RSpec.describe Group, type: :model do
  let(:user) { FactoryBot.create(:user) }

  describe 'validations' do
    it 'is valid with a name, icon and user_id' do
      category = Group.new(name: 'Apple Test', icon: 'https://avatars.githubusercontent.com/u/53082877?s=96&v=4',
                           user_id: user.id)
      expect(category).to be_valid
    end

    it 'is invalid without a name' do
      category = Group.new(name: nil, icon: 'icon', user_id: user.id)
      expect(category).to_not be_valid
      expect(category.errors[:name]).to include("can't be blank")
    end

    it 'is invalid without icon' do
      category = Group.new(name: 'Books Test', icon: nil, user_id: user.id)
      expect(category).to_not be_valid
      expect(category.errors[:icon]).to include("can't be blank")
    end

    it 'is invalid without a user_id' do
      category = Group.new(name: 'Books Test', icon: 'icon test', user_id: nil)
      expect(category).to_not be_valid
      expect(category.errors[:user_id]).to include("can't be blank")
    end
  end
end
