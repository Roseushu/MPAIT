class WelcomeController < ApplicationController
	 def main
       @course = Course.all
  	end
end
