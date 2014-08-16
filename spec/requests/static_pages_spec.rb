require 'spec_helper'

describe "Static pages" do 

	let(:base_title) { "BeSocial Application" }

	describe "Home page" do 
		it "should have the content 'BeSocial'" do 
			visit root_path
			expect(page).to have_content('BeSocial')
		end

		it "should have the title 'Home'" do
		   visit root_path
		   expect(page).to have_title("#{base_title} | Home") 
		end

		it "should not have the custom page titile" do 
			visit '/static_pages/home'
			expect(page).not_to have_title('| Home')
		end
	end



	describe "Help page" do 
		it "should have the content 'Help'" do 
			visit help_path
			expect(page).to have_content('Help')
		end

		it "should have the title 'Help'" do
			visit help_path
			expect(page).to have_title("#{base_title}| Help")
		end
	end



	describe "About page" do 
		it "should  have the content 'About Us'" do 
			visit about_path
			expect(page).to have_content('About Us')
		end
		it "should have the title 'About Us'" do 
			visit about_path
			expect(page).to have_title("#{base_title} | About Us")
		end
	end

	describe "Contact page" do 
		it "should have the content 'Contact'" do 
			visit contact_path
			expect(page).to have_content(" Contact")
		end

		it "should have the title 'Contact'" do 
			visit contact_path
			expect(page).to have_title("#{base_title} | Contact")
		end
	end
end