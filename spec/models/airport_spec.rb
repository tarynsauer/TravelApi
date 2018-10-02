require 'rails_helper'

RSpec.describe Airport, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:iata) }
    it { should validate_presence_of(:latitude) }
    it { should validate_presence_of(:longitude) }
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:timezone) }
    it { should validate_presence_of(:utc_offset) }
  end
end
