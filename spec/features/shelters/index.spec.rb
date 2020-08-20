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
                                address:  "1145 S. Sherman St.",
                                city:     "Denver",
                                state:    "CO",
                                zip:      "80112"
                      )

    visit "/shelters"
    expect(page).to have_content(shelter_1.name)
    expect(page).to have_content("Address: #{shelter_1.address}")
    expect(page).to have_content(shelter_2.name)
    expect(page).to have_content("Address:  #{shelter_2.address}")
  end
end
