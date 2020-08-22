
## User Stories

```
[ ] done

User Story 1, Deploy your application to Heroku

As a visitor or user of the site
I will perform all user stories
By visiting the application on Heroku.
Localhost is fine for development, but
the application must be hosted on Heroku.
```


```
[ ] done

User Story 8, Shelter Pets Index

As a visitor
When I visit '/shelters/:shelter_id/pets'
Then I see each Pet that can be adopted from that Shelter with that shelter_id including the Pet's:
- image
- name
- approximate age
- sex
```

```

[ ] done
User Story 10, Shelter Pet Creation

As a visitor
When I visit a Shelter Pets Index page
Then I see a link to add a new adoptable pet for that shelter "Create Pet"
When I click the link
I am taken to '/shelters/:shelter_id/pets/new' where I see a form to add a new adoptable pet
When I fill in the form with the pet's:
- image
- name
- description
- approximate age
- sex ('female' or 'male')
And I click the button "Create Pet"
Then a `POST` request is sent to '/shelters/:shelter_id/pets',
a new pet is created for that shelter,
that pet has a status of 'adoptable',
and I am redirected to the Shelter Pets Index page where I can see the new pet listed
```

```
[ ] done

User Story 15, Pet Update From Pets Index Page

As a visitor
When I visit the pets index page or a shelter pets index page
Next to every pet, I see a link to edit that pet's info
When I click the link
I should be taken to that pets edit page where I can update its information just like in User Story 11
```

```
[ ] done

User Story 16, Pet Delete From Pets Index Page

As a visitor
When I visit the pets index page or a shelter pets index page
Next to every pet, I see a link to delete that pet
When I click the link
I should be taken to the pets index page where I no longer see that pet
```

```
[ ] done

User Story 17, Shelter Links

As a visitor
When I click on the name a shelter anywhere on the site
Then that link takes me to that Shelter's show page
```

```
[ ] done

User Story 21, Shelter Pet Index Link

As a visitor
When I visit a shelter show page ('/shelters/:id')
Then I see a link to take me to that shelter's pets page ('/shelters/:id/pets')
```

```
[ ] done

User Story 22, Styling

As a visitor
When I visit any page on the site
Then I should see a reasonably well styled page
```

---

## Extensions

```
[ ] done

User Story 23, Shelter Pet Count

As a visitor
When I visit a shelter pets index page
I see a count of the number of pets at this shelter

```

```
[ ] done

User Story 24, Adoptable Pets Display First

As a visitor
When I visit a shelter pets index or a pets index page
I see adoptable pets listed before pets whose adoption status is pending

```

```
[ ] done

User Story 25, Pet Filter by Adoptable Status

As a visitor
When I visit the pets index page or a shelter pets index page
I see a link to show only adoptable pets
I also see a link to show only adoption-pending pets
When I click the link
Then my path is something like '/pets?adoptable=true' or '/pets?adoptable=false' (respectively)
And I see only the pets that are adoptable/pending adoption (respectively).
```


```
[ ] done

User Story 26, Change Pet's Adoptable/Pending Adoption Status

As a visitor
When I visit a Pet Show page
Then I see a link to change the pet's adoptable status
Adoptable pets should have the link "Change to Adoption Pending"
Adoption Pending pets should have the link "Change to Adoptable"
When I click the link
Then a 'PATCH' request is sent to '/pets/:id/adoptable' or 'pets/:id/pending' (depending on the link)
and I am redirected to the Pet Show page where I see the pet's status has been changed
```

```
[ ] done

User Story 27, Sort Shelters by number of adoptable pets

As a visitor
When I visit the Shelter Index Page
Then I see a link to sort shelters by the number of adoptable pets they have
When I click on the link
I'm taken back to the Shelters Index Page where I see all of the shelters in order of their count of adoptable pets (highest to lowest)
```

```
[ ] done

User Story 28, Sort Shelters in Alphabetical Order

As a visitor
When I visit the Shelter Index Page
Then I see a link to sort shelters in alphabetical order
When I click on the link
I'm taken back to the Shelters Index Page where I see all of the shelters in alphabetical order
```
