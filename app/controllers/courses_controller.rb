class CoursesController < ApplicationController
	def new
	end
	def show
  		@course = Course.find(params[:id])
	end
	def edit
  		@course = Course.find(params[:id])
	end
	def update
  		@course = Course.find(params[:id])
 
  			if @course.update(course_params)
    		        redirect_to @course
  			else
    		        render 'edit'
  			end
	end
	def destroy
  		@course = Course.find(params[:id])
 		@course.destroy
 
  		redirect_to courses_path
	end
	def index
  		@courses = Course.all
	end
	def create
  		@course = Course.new(course_params)
  		@course.save
  		redirect_to @course
	end
	private
  	def course_params
    params.require(:course).permit(:code, :name)
  end
end
