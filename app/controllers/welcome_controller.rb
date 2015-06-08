class WelcomeController < ApplicationController

	def home_page
	end
	def aboutus
	end

	def contactus
	end

	def welcome_page
		@villains = {
			"joker" => {
				name: "Grandma's cousin",
				strengths: ["studyly", "purple pants", "nice teeth"],
				favorite_cookie: "Oatmeal raisin"
			},
			"catwoman" => {
				name: "Grandma's aunt",
				strengths: ["whips"],
				favorite_cookie: "Chocolate chip"
			}
		}
	end

	def detail 
		@villains = {
			"joker" => {
				name: "Grandma's cousin",
				strengths: ["studyly", "purple pants", "nice teeth"],
				favorite_cookie: "Oatmeal raisin"
			},
			"catwoman" => {
				name: "Grandma's aunt",
				strengths: ["whips"],
				favorite_cookie: "Chocolate chip"
			}
		}
		#params {name: "whatever is in url"}

		if @villains.has_key?(params[:key])
			@villains_details = @villains[params[:key]]
		else
			@villains_details = "No info on person"
		end
		
	end

end
