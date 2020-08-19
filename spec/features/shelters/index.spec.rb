require 'rails_helper'

RSpec.describe "shelters index page", type: :feature do
  it "can see all shelters names and number of dogs" do
    shelter_1 = Shelter.create(name:       "Dumb Friends League",
                        number_of_dogs:      208)
    shelter_2 = Shelter.create(name:       "Denver Samoyed Rescue",
                        number_of_dogs:      199)

    visit "/shelters"

    expect(page).to have_content(shelter_1.name)
    expect(page).to have_content("Number of Dogs: #{shelter_1.number_of_dogs}")
    expect(page).to have_content(shelter_2.name)
    expect(page).to have_content("Number of Dogs: #{shelter_2.dogs}")
  end
end
