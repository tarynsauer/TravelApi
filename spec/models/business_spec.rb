require 'rails_helper'

RSpec.describe Business, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:id) }
    it { should validate_presence_of(:airport_id) }
    it { should validate_presence_of(:payload) }
  end
end
