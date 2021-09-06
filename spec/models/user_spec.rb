require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(name: 'Alan', email: 'soto.alan@hotmail.com', password: '123456') }
  context 'Validations' do
    it 'Name must be present' do
      expect(subject).to be_valid
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'Name must contain between 2 and 15 characters' do
      expect(subject).to be_valid
      subject.name = 'a'
      expect(subject).to_not be_valid
      subject.name = 'aaaaaaaaaaaaaaaa'
      expect(subject).to_not be_valid
    end

    it 'Email must be present' do
      expect(subject).to be_valid
      subject.email = nil
      expect(subject).to_not be_valid
    end

    it 'Email must be unique' do
      User.create(name: 'alan', email: 'soto.alan@hotmail.com', password: '123456')
      expect(subject).to_not be_valid
      subject.email = 'hana@hana'
      expect(subject).to be_valid
    end
    
  end
end
