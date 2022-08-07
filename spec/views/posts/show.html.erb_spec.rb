require 'rails_helper'

RSpec.describe 'posts/show', type: :view do
  let(:user) { create(:user) }

  before(:each) do
    @post = assign(:post, create(:post_my_text, creator_id: user.id))
  end

  it 'renders attributes in <p>' do
    render

    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
