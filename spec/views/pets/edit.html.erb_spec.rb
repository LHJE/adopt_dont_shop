require 'rails_helper'

RSpec.describe 'pets/edit', type: :view do
  before(:each) do
    @pet = assign(:pet, Pet.create!(
                          name: 'MyString',
                          age: 'MyString',
                          sex: 'MyString',
                          adoptable: false
                        ))
  end

  it 'renders the edit pet form' do
    render

    assert_select 'form[action=?][method=?]', pet_path(@pet), 'post' do
      assert_select 'input[name=?]', 'pet[name]'

      assert_select 'input[name=?]', 'pet[age]'

      assert_select 'input[name=?]', 'pet[sex]'

      assert_select 'input[name=?]', 'pet[adoptable]'
    end
  end
end
