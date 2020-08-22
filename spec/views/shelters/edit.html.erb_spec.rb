require 'rails_helper'

RSpec.describe 'shelters/edit', type: :view do
  before(:each) do
    @shelter = assign(:shelter, Shelter.create!(
                                  name: 'MyString',
                                  address: 'MyString',
                                  city: 'MyString',
                                  state: 'MyString',
                                  zip: 'MyString'
                                ))
  end

  it 'renders the edit shelter form' do
    render

    assert_select 'form[action=?][method=?]', shelter_path(@shelter), 'post' do
      assert_select 'input[name=?]', 'shelter[name]'

      assert_select 'input[name=?]', 'shelter[address]'

      assert_select 'input[name=?]', 'shelter[city]'

      assert_select 'input[name=?]', 'shelter[state]'

      assert_select 'input[name=?]', 'shelter[zip]'
    end
  end
end
