class TutorialsController < ApplicationController

	def new
	  @tutorial = Tutorial.new
       question = @tutorial.questions.build
		#@tutorial.build_sqldata
		#@@tutorial.questions.build
		3.times { @tutorial.questions.build } 
	end

	def create
		@tutorial = Tutorial.new(tutorial_param)
        #@tutorial.questions
		if @tutorial.save
          flash[:success] = "Your tutorial is submited for review"
          redirect_to tutorial_path(@tutorial)
		else
		  puts @tutorial.errors.inspect
          puts "fails"
          render :new
		end
	end

	def show
		@tutorial = Tutorial.find(params[:id])

	end

	def edit
		@tutorial = Tutorial.find(params[:id])
	end

	def update
      @tutorial = Tutorial.find(params[:id])
      #@tutorial.build_sqldata
      @tutorial.questions.build

      if @tutorial.update(tutorial_param)
         redirect_to tutorial_path(@tutorial)
      else
          render :edit
      end
	end

	private
        def tutorial_param
            params.require(:tutorial).permit(:title, :problem , questions_attributes: [ :question , :answer , :hint])
        end

end