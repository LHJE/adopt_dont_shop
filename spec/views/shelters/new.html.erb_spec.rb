require 'rails_helper'

RSpec.describe 'shelters/new', type: :view do
  before(:each) do
    assign(:shelter, Shelter.new(
                       name: 'MyString',
                       address: 'MyString',
                       city: 'MyString',
                       state: 'MyString',
                       zip: 'MyString'
                     ))
  end

  it 'renders new shelter form' do
    render

    assert_select 'form[action=?][method=?]', shelters_path, 'post' do
      assert_select 'input[name=?]', 'shelter[name]'

      assert_select 'input[name=?]', 'shelter[address]'

      assert_select 'input[name=?]', 'shelter[city]'

      assert_select 'input[name=?]', 'shelter[state]'

      assert_select 'input[name=?]', 'shelter[zip]'
    end
  end
end
