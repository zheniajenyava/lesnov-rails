class PresidentsController < ApplicationController
def new
  end
 def create
 @president = President.new(params.require(:president).permit(:firstName, :lastName))

  @president.save
  redirect_to @president
  end
  def update
  @president = President.find(params[:id])

  if @president.update(president_params)
    redirect_to @president
  else
    render 'edit'
  end
  end
  def show
    @president = President.find(params[:id])
  end
  def edit
  @president = President.find(params[:id])
  end

  def index
    @presidents = President.all
  end

  private
  def president_params
    params.require(:president).permit(:firstName, :lastName)
  end

end
