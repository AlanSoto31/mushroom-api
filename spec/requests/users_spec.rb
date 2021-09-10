require 'rails_helper'

RSpec.describe 'Users', type: :request do
  let(:user1) do
    { user:
{ name: 'hana',
  email: 'hana.soto@hotmail.com',
  password: '123456' } }
  end

  let(:user2) do
    { name: 'hana',
      email: 'hana.soto@hotmail.com',
      password: '123456' }
  end

  describe 'POST /create' do
    it 'status should be created' do
      post('/users', params: user1, as: :json)
      expect(response).to have_http_status(:created)
    end

    it 'status should be unprocessable_entity' do
      post('/users', params: user2, as: :json)
      expect(response).to have_http_status(:unprocessable_entity)
    end
  end
end
