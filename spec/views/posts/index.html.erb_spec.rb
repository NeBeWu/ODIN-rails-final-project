require 'rails_helper'

RSpec.describe 'posts/index', type: :view do
  let(:user) { create(:user) }

  before(:each) do
    assign(:posts, [create(:post_my_text, creator_id: user.id),
                    create(:post_my_text, creator_id: user.id)])
  end

  it 'renders a list of posts' do
    render

    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new('MyText'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(user.id.to_s), count: 2
  end
end
