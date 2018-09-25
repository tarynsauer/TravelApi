require 'rails_helper'

RSpec.describe 'V1::Businesses API', type: :request do
  let(:airport) { create(:airport) }
  let!(:business) do
    create(:business).tap do |b|
      b.airport_id = airport.id
    end
  end
  let(:user) { create(:user) }
  let(:headers) { valid_headers }

  describe 'GET /businesses/search' do
    before { get '/businesses/search', params: { id: airport.id }, headers: headers }

    it 'returns businesses' do
      expect(json.size).to eq(1)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
end
