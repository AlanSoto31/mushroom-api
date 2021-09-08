require 'rails_helper'

RSpec.describe Mushroom, type: :model do
  subject do
    Mushroom.new(
      name: 'Oyster',
      img_url: 'https://en.wikipedia.org/wiki/Pleurotus_ostreatus',
      description: 'description',
      scientific_name: 'Oyster operandis',
      wiki_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/Neutari_%28oyster_mushroom%29.jpg/150px-Neutari_%28oyster_mushroom%29.jpg',
      edibility: 'taste',
      dimensions: '13 x 5 cm',
      location: 'Worldwide'
    )
  end

  context 'name validations' do
    it 'name must be present' do
      expect(subject).to be_valid
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'name must contain between 2 and 15 characters' do
      expect(subject).to be_valid
      subject.name = 'a'
      expect(subject).to_not be_valid
      subject.name = 'aaaaaaaaaaaaaaaa'
      expect(subject).to_not be_valid
    end
  end

  context 'img_url validations' do
    it 'img_url must be present' do
      expect(subject).to be_valid
      subject.img_url = nil
      expect(subject).to_not be_valid
    end

    it 'img_url must contain minimum 20 characters' do
      expect(subject).to be_valid
      subject.img_url = 'www.n.com'
      expect(subject).to_not be_valid
    end
  end

  context 'description validations' do
    it 'description must be present' do
      expect(subject).to be_valid
      subject.description = nil
      expect(subject).to_not be_valid
    end

    it 'description must contain between 10 and 300 characters' do
      expect(subject).to be_valid
      subject.description = 'good'
      expect(subject).to_not be_valid
      subject.description = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit,
        sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
        Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
        aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in
        voluptate velit esse cillum dolore eu fugiat nulla pariatur.
        Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia
        deserunt mollit anim id est laborum.'
      expect(subject).to_not be_valid
    end
  end

  context 'scientific_name validations' do
    it 'scientific_name must be present' do
      expect(subject).to be_valid
      subject.scientific_name = nil
      expect(subject).to_not be_valid
    end

    it 'scientific_name must contain between 2 and 20 characters' do
      expect(subject).to be_valid
      subject.scientific_name = 'a'
      expect(subject).to_not be_valid
      subject.scientific_name = 'aaaaaaaaaaaaaaaaaaaaaaaa'
      expect(subject).to_not be_valid
    end
  end

  context 'wiki_url validations' do
    it 'wiki_url must be present' do
      expect(subject).to be_valid
      subject.wiki_url = nil
      expect(subject).to_not be_valid
    end

    it 'wiki_url must contain minimum 20 characters' do
      expect(subject).to be_valid
      subject.wiki_url = 'www.n.com'
      expect(subject).to_not be_valid
    end
  end

  context 'edibility validations' do
    it 'edibility must be present' do
      expect(subject).to be_valid
      subject.edibility = nil
      expect(subject).to_not be_valid
    end

    it 'edibility must contain minimum 2 characters' do
      expect(subject).to be_valid
      subject.edibility = 'a'
      expect(subject).to_not be_valid
    end
  end

  context 'dimensions validations' do
    it 'dimensions must be present' do
      expect(subject).to be_valid
      subject.dimensions = nil
      expect(subject).to_not be_valid
    end

    it 'dimensions must contain minimum 2 characters' do
      expect(subject).to be_valid
      subject.dimensions = 'a'
      expect(subject).to_not be_valid
    end
  end

  context 'location validations' do
    it 'location must be present' do
      expect(subject).to be_valid
      subject.location = nil
      expect(subject).to_not be_valid
    end

    it 'location must contain minimum 2 characters' do
      expect(subject).to be_valid
      subject.location = 'a'
      expect(subject).to_not be_valid
    end
  end
end
