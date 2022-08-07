require 'rails_helper'

RSpec.describe 'posts/edit', type: :view do
  let(:user) { create(:user) }

  before(:each) do
    @post = assign(:post, create(:post, creator_id: user.id))
  end

  it 'renders the edit post form' do
    render

    assert_select 'form[action=?][method=?]', post_path(@post), 'post' do
      assert_select 'textarea[name=?]', 'post[body]'

      assert_select 'input[name=?]', 'post[creator_id]'
    end
  end
end
