class SchoolClassesController < ApplicationController
<<<<<<< HEAD
  def index
    render plain: 'school classes'
  end
=======
>>>>>>> 72383698f77ca412e00b6038426d86b0c6a49ec9
  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def new
    @school_class = SchoolClass.new
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def create
<<<<<<< HEAD
    @school_class = SchoolClass.new(post_params(:school_class))
=======
    @school_class = SchoolClass.new(params.require(:school_class))
>>>>>>> 72383698f77ca412e00b6038426d86b0c6a49ec9
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def update
    @school_class = SchoolClass.find(params[:id])
<<<<<<< HEAD
    @school_class.update(post_params(:school_class))
    redirect_to school_class_path(@school_class)
  end
  
  private
  	def post_params(*args)
		params.require(:school_class).permit(*args)
		# params.require(:post).permit(:title, :description)
	end
=======
    @school_class.update(params.require(:school_class))
    redirect_to school_class_path(@school_class)
  end
>>>>>>> 72383698f77ca412e00b6038426d86b0c6a49ec9
end
