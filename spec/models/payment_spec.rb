require 'rails_helper'

RSpec.describe Payment, type: :model do
  let(:user) { FactoryBot.create(:user) }

  describe 'validations' do
    it 'is valid with a name, amount and user' do
      payment = Payment.new(name: 'Payment Test', amount: 10, author_id: user.id)
      expect(payment).to be_valid
    end

    it 'is invalid without a user' do
      payment = Payment.new(name: 'Payment Test', amount: 10)
      expect(payment).not_to be_valid
      expect(payment.errors[:author_id]).to include("can't be blank")
    end

    it 'is invalid with a name' do
      payment = Payment.new(name: nil, amount: 10, author_id: user.id)
      expect(payment).not_to be_valid
      expect(payment.errors[:name]).to include("can't be blank")
    end

    it 'is invalid with a negative amount' do
      payment = Payment.new(name: nil, amount: -10, author_id: user.id)
      expect(payment).to_not be_valid
      expect(payment.errors[:amount]).to include('must be greater than or equal to 0')
    end
  end
end