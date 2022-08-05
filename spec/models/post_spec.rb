require 'rails_helper'

RSpec.describe Post, type: :model do
  context 'associations' do
    it { should belong_to(:creator).class_name('User').inverse_of(:posts) }
  end

  context 'validations' do
    it { should validate_presence_of(:body) }
    it { should validate_presence_of(:creator) }

    it { should validate_length_of(:body).is_at_most(5000) }
  end
end
