require 'rails_helper'

RSpec.feature 'LandingPages', type: :feature do

  context 'Going to website' do
    Steps 'Being welcomed' do
      Given 'I am on the landing page' do
        visit '/'
      end
      Then 'I can see a welcome message' do
        expect(page).to have_content("Rob and Sandro")
      end
    end
  end

  context 'Going to website' do
    Steps 'Create Animal' do
      Given 'I am on the Animal creation page' do
        visit 'animals/new'
      end
      Then 'Create an animal' do
        fill_in('Name', with: 'Dog')
        fill_in('animal_latin_name', with: 'Seekrit')
        fill_in('animal_kingdom', with: 'Alien')
        click_button('Create Animal')
      end
    end
  end

  context 'Going to website' do
    Steps 'Create Animal' do
      Given 'I am on the Animal Listing page' do
        visit 'animals'
      end
      Then 'Display animals' do
        expect(page).to have_content("Name")
        expect(page).to have_content("Latin name")
        expect(page).to have_content("Kingdom")
      end
    end
  end

  context 'Going to website' do
    Steps 'Update Animal' do
      Given 'I am on the Animal update page' do
        visit 'animals/31/edit'
      end
      Then 'Updates animals' do
        # within("//li[@id='animal']") do
        fill_in('Name', with: 'Dog')
        fill_in('animal_latin_name', with: 'Seekrit')
        fill_in('animal_kingdom', with: 'Alien')
        click_button('Update Animal')

      end
    end
  end

  context 'Going to website' do
    Steps 'Destroy Animal record' do
      Given 'I am on the Animal page' do
        visit 'animals'
      end
      Then 'Destroys animals' do
        click_link('Destroy')

      end
    end
  end

  context 'Going to website' do
    Steps 'Create Animal Sighting' do
      Given 'I am on the Animal sighting page' do
        visit 'sightings/new'
      end
      Then 'create animals sighting' do
        # within("//li[@id='animal']") do
        fill_in('Date', with: '1970-7-04')
        fill_in('Time', with: 'Seekrit')
        fill_in('Latitude', with: 4)
        fill_in('Longitude', with: 1)
        select('dog', from: 'Animal')
        select('North America', from: 'Region4')
        click_button('Create Sighting')

      end
    end
  end

  context 'Going to website' do
    Steps 'Update Animal Sightings' do
      Given 'I am on the Animal Sightings update page' do
        visit 'sightings/8/edit'
      end
      Then 'Updates Sightings' do
        fill_in('Date', with: '1970-7-04')
        fill_in('Time', with: 'Seekrit')
        fill_in('Latitude', with: 4)
        fill_in('Longitude', with: 1)
        select('dog', from: 'Animal')
        select('North America', from: 'Region4')
        click_button('Update Sighting')

      end
    end
  end

  context 'Going to website' do
    Steps 'Destroy Animal Sightings record' do
      Given 'I am on the Animal Sightings page' do
        visit 'sightings'
      end
      Then 'Destroys sighting' do
        click_link('Destroy')

      end
    end
  end

  context 'Going to website' do
    Steps 'View Animal and Sighting' do
      Given 'I am on the Animal Sightings page' do
        visit 'animals/31'
      end
      Then 'Views Sightings based on animal' do
        expect(page).to have_content('Name')
        expect(page).to have_content('Kingdom')
        expect(page).to have_content('Latin name')
        expect(page).to have_content('Know Sightings')
      end
    end
  end





end
