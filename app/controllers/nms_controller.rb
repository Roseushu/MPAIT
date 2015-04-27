class NmsController < ApplicationController
	def new
		@nm = Pswd.new
	end

	def create
		if @nm = Pswd.exists?(nm_params)
			redirect_to welcome_main_path
		else
			render 'new'
		end
	end

	private
		def nm_params
			params.require(:pswd).permit(:name, :pwd)	
		end
end
