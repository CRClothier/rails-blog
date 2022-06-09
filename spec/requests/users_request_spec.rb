require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET Users#index' do
    before(:example) { get '/users' }

    it 'returns correct status' do
      expect(response).to have_http_status(200)
    end

    it 'renders correctly' do
      expect(response).to render_template(:index)
    end

    it 'contains correct placeholder text' do
      expect(response.body).to include('A list of all users')
    end
  end

  describe 'Get Users#show' do
    before(:example) { get '/users/:id' }

    it 'returns correct status' do
      expect(response).to have_http_status(200)
    end

    it 'renders correctly' do
      expect(response).to render_template(:show)
    end

    it 'contains correct placeholder text' do
      expect(response.body).to include("A user's profile")
    end
  end
end
