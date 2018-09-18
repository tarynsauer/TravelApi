require 'rails_helper'

RSpec.describe 'Airports API', type: :request do
  let!(:airports) { create_list(:airport, 10) }
  let(:user) { create(:user) }
  let(:headers) { valid_headers }

  describe 'GET /airports' do
    before { get '/airports', params: {}, headers: headers }

    it 'returns airports' do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
end
