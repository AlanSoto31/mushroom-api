require 'rails_helper'

RSpec.describe 'Mushrooms', type: :request do
  Mushroom.delete_all
  User.delete_all

  User.create(name: 'alan', email: 'soto.alan@hotmail.com', password: 'acambaro2535', admin: true)
  User.create(name: 'hana', email: 'hana.soto@hotmail.com', password: '123456')

  let(:admin) { User.find_by(email: 'soto.alan@hotmail.com') }
  let(:user) { User.find_by(email: 'hana.soto@hotmail.com') }

  Mushroom.create(
    name: 'Oyster',
    img_url: 'https://en.wikipedia.org/wiki/Pleurotus_ostreatus',
    description: 'description',
    scientific_name: 'Oyster operandis',
    wiki_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/Neutari_%28oyster_mushroom%29.jpg/150px-Neutari_%28oyster_mushroom%29.jpg',
    edibility: 'taste',
    dimensions: '13 x 5 cm',
    location: 'Worldwide'
  )

  let(:mushroom) do
    { name: 'Oyster',
      img_url: 'https://en.wikipedia.org/wiki/Pleurotus_ostreatus',
      description: 'description',
      scientific_name: 'Oyster operandis',
      wiki_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/Neutari_%28oyster_mushroom%29.jpg/150px-Neutari_%28oyster_mushroom%29.jpg',
      edibility: 'taste',
      dimensions: '13 x 5 cm',
      location: 'Worldwide' }
  end

  def authenticate_user(user)
    secret_key = Rails.application.secrets.secret_key_base[0]
    JWT.encode({ user_id: user.id, user_name: user.name }, secret_key)
  end

  describe 'GET /index' do
    it 'status should be "OK"' do
      get('/mushrooms')
      expect(response).to have_http_status(:ok)
    end

    it 'should return an array of mushrooms' do
      get('/mushrooms')
      json = JSON.parse(response.body)
      expect(json['data'][0]['name']).to eql('Oyster')
    end
  end

  describe 'POST /create' do
    it 'status should be "Created"' do
      post('/mushrooms', params: mushroom, headers: { Authorization: "Bearer #{authenticate_user(admin)}" },
                         as: :json)
      expect(response).to have_http_status(:created)
    end

    it 'admin can create a mushroom' do
      post('/mushrooms', params: mushroom, headers: { Authorization: "Bearer #{authenticate_user(admin)}" }, as: :json)
      json = JSON.parse(response.body)
      expect(json['data']['name']).to eql('Oyster')
    end

    it 'regular user can not create a mushroom' do
      post('/mushrooms', params: mushroom, headers: { Authorization: "Bearer #{authenticate_user(user)}" }, as: :json)
      expect(response).to have_http_status(:unauthorized)
    end
  end

  describe 'PUT /update' do
    before(:each) do
      mushroom['name'] = 'Oyster_Updated'
      @mush = Mushroom.find_by(name: 'Oyster')
    end

    it 'status should be "OK"' do
      put("/mushrooms/#{@mush.id}", params: mushroom,
                                    headers: { Authorization: "Bearer #{authenticate_user(admin)}" }, as: :json)
      expect(response).to have_http_status(:ok)
    end

    it 'admin can update a mushroom' do
      put("/mushrooms/#{@mush.id}", params: mushroom,
                                    headers: { Authorization: "Bearer #{authenticate_user(admin)}" }, as: :json)
      json = JSON.parse(response.body)
      expect(json['data']['name']).to eql('Oyster_Updated')
    end

    it 'regular user can not update a mushroom' do
      put("/mushrooms/#{@mush.id}", params: mushroom, headers: { Authorization: "Bearer #{authenticate_user(user)}" },
                                    as: :json)
      expect(response).to have_http_status(:unauthorized)
    end
  end

  describe 'DELETE /destroy' do
    it 'regular user can not delete a mushroom' do
      mush = Mushroom.find_by(name: 'Oyster')
      delete("/mushrooms/#{mush.id}", headers: { Authorization: "Bearer #{authenticate_user(user)}" })
      expect(response).to have_http_status(:unauthorized)
    end

    it 'admin can delete a mushroom' do
      mush = Mushroom.find_by(name: 'Oyster')
      delete("/mushrooms/#{mush.id}", headers: { Authorization: "Bearer #{authenticate_user(admin)}" })
      get('/mushrooms')
      json = JSON.parse(response.body)
      expect(json['data']).to be_empty
    end
  end
end
