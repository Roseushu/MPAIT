class PswdsController < ApplicationController
  def new
  	@pswd = Pswd.new
  end
  def create
  @pswd = Pswd.new(pswd_params)
 
  if @pswd.save
  redirect_to welcome_enrollsuccess_path
else
	render 'new'
end
end

private
  def pswd_params
    params.require(:pswd).permit(:name, :pwd)
  end
end
