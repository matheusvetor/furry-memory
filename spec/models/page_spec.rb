require 'rails_helper'

RSpec.describe Page, type: :model do
  context 'validations' do
    it { is_expected.to validate_presence_of(:url) }
  end
end
