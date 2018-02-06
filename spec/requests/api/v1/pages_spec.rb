require 'rails_helper'

RSpec.describe 'Page API', type: :request do
  let!(:pages)  { create_list(:page, 10) }

  describe 'GET /pages' do
    before { get '/api/v1/pages' }

    it 'returns pages' do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end

    describe 'with pagination' do
      before { get '/api/v1/pages', params: { per_page: 1 } }

      it 'returns pages' do
        expect(json).not_to be_empty
        expect(json.size).to eq(1)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end
  end

  describe 'POST /pages' do
    let(:valid_attributes) { attributes_for(:page) }

    context 'when the request is valid' do
      before { post '/api/v1/pages', params: valid_attributes }

      it 'creates a author' do
        expect(json['url']).to eq(valid_attributes[:url])
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when the request is invalid' do
      before { post '/api/v1/pages', params: { url: nil } }

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

      it 'returns a validation failure message' do
        expect(response.body)
          .to match(/Url can't be blank/)
      end
    end
  end
end
