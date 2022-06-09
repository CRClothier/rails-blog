require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET posts#index' do
    before(:example) { get '/users/:user_id/posts' }

    it 'gives correct status' do
      expect(response).to have_http_status(200)
    end

    it 'renders correctly' do
      expect(response).to render_template(:index)
    end

    it 'contains correct placeholder text' do
      expect(response.body).to include('A list of all a users posts')
    end
  end

  describe 'GET posts#show' do
    before(:example) { get '/users/:user_id/posts/:post_id' }

    it 'gives correct status' do
      expect(response).to have_http_status(:ok)
    end

    it 'renders correctly' do
      expect(response).to render_template(:show)
    end

    it 'contains correct placeholder text' do
      expect(response.body).to include('An individual post')
    end
  end
end
