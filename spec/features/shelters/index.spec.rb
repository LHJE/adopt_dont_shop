require 'rails_helper'

RSpec.describe "shelters index page", type: :feature do
  it "can see all shelters names and number of dogs" do
    shelter_1 = Shelter.create( name:     "Dumb Friends League",
                                address:  "208 S. Nile St.",
                                city:     "Aurora",
                                state:    "CO",
                                zip:      "80020"
                      )
    shelter_2 = Shelter.create( name:     "Denver Samoyed Rescue",
                                address:  "208 S. Nile St.",
                                city:     "Aurora",
                                state:    "CO",
                                zip:      "80020"
                      )

    visit "/shelters"

    expect(page).to have_content(shelter_1.name)
    expect(page).to have_content("Number of Dogs: #{shelter_1.address}")
    expect(page).to have_content(shelter_2.name)
    expect(page).to have_content("Number of Dogs: #{shelter_2.address}")
  end
end
