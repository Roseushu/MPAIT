class ChaptersController < ApplicationController
	def create
   		@course = Course.find(params[:course_id])
   		@chapter = @course.chapters.create(chapter_params)
    	redirect_to course_path(@course)
  	end
  	def destroy
    	@course = Course.find(params[:course_id])
    	@chapter = @course.chapters.find(params[:id])
    	@chapter.destroy
    	redirect_to course_path(@course)
  	end

	def show
   		@course = Course.find(params[:course_id])
    	@chapter = @course.chapters.find(params[:id])
	end
      def edit
    @course = Course.find(params[:course_id])
    @chapter = @course.chapters.find(params[:id])
  end

  def update
    @course = Course.find(params[:course_id])
    @chapter = @course.chapters.find(params[:id])
    if @chapter.update(chapter_params)
      redirect_to course_chapter_path
    else
      redirect_to course_path(@course)
    end
  end
  	private
   def chapter_params
   		params.require(:chapter).permit(:imgcode, :title, :subtitle, :body)
   end
end
