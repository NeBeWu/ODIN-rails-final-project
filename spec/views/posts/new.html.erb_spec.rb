require 'rails_helper'

RSpec.describe 'posts/new', type: :view do
  let(:user) { create(:user) }

  before(:each) do
    assign(:post, build(:post, creator_id: user.id))
  end

  it 'renders new post form' do
    render

    assert_select 'form[action=?][method=?]', posts_path, 'post' do
      assert_select 'textarea[name=?]', 'post[body]'

      assert_select 'input[name=?]', 'post[creator_id]'
    end
  end
end
