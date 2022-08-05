require 'rails_helper'

RSpec.describe User, type: :model do
  context 'associations' do
    it { should have_many(:posts).with_foreign_key(:creator_id).inverse_of(:creator) }
  end

  context 'validations' do
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password) }

    it { should validate_uniqueness_of(:email).case_insensitive }

    it { should validate_length_of(:password).is_at_least(10) }
  end
end
