class ConstructorsController < ApplicationController
  before_action :set_constructor, only: [:show, :edit, :update, :destroy]
  def index
    @constructors = Constructor.all
  end
  def edit
  end
  def update
    if(@constructor.update_attributes(constructor_params))
      redirect_to @constructor
    else
      render "edit"
    end
  end
  def destroy
    @constructor.destroy
    redirect_to constructors_path
  end
  def show
    @courses = @constructor.courses
  end
  def new
    @constructor = Constructor.new
  end
  def create
    @constructor = Constructor.new(constructor_params)
    if(@constructor.save)
      redirect_to @constructor
    else
      render :new
    end
  end
  private
  def constructor_params
    params.require(:constructor).permit(:title)
  end
  def set_constructor
    @constructor = Constructor.find(params[:id])
  end
end
