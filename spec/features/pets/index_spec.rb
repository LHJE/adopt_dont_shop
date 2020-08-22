require 'rails_helper'

RSpec.describe 'pets index page' do
  before :each do
    @pet_1 = Pet.create(image: 'image of some sort',
                        name: 'Eureka',
                        age: '3',
                        sex: 'M',
                        shelter_id: 1)
    @pet_2 = Pet.create(image: 'image of some sort',
                        name: 'Kadfly',
                        age: '5',
                        sex: 'F',
                        shelter_id: 2)
  end

  it 'can see all pets attributes' do
    visit '/pets'
    expect(page).to have_content(@pet_1.image)
    expect(page).to have_content(@pet_1.name)
    expect(page).to have_content(@pet_1.age)
    expect(page).to have_content(@pet_1.sex)
    expect(page).to have_content(@pet_1.shelter_id)
    expect(page).to have_content(@pet_2.image)
    expect(page).to have_content(@pet_2.name)
    expect(page).to have_content(@pet_2.age)
    expect(page).to have_content(@pet_2.sex)
    expect(page).to have_content(@pet_2.shelter_id)
  end
end
