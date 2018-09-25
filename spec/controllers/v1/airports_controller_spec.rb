require 'rails_helper'

RSpec.describe 'V1::Airports API', type: :request do
  let!(:airports) { create_list(:airport, 10) }
  let(:user) { create(:user) }
  let(:headers) { valid_headers }

  describe 'GET /airports' do
    before { get '/airports', params: {}, headers: headers }

    it 'returns airports' do
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /airports/auto_complete' do
    before do
      allow(Airport).to receive(:search).and_return([])
    end

    it 'returns status code 200' do
      get '/airports/auto_complete', params: { q: 'Chicago' }, headers: headers
      expect(json['suggestions']).to be_empty
      expect(response).to have_http_status(200)
    end

  end
end
