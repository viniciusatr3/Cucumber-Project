class BasicsController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @basics = Basic.all
  end

  def show
    @basic = Basic.find(params[:id])
  end

  def new
    @basic = Basic.new
  end

  def edit
    @basic = Basic.find(params[:id])
  end

  def create
    @basic = Basic.new(params[:basic])
    if @basic.save
      redirect_to @basic, notice: "Basic was successfully created."
    else
      render "new"
    end
  end

  def update
    @basic = Basic.find(params[:id])
    if @basic.update_attributes(params[:basic])
      redirect_to @basic, notice: "Basic was successfully updated."
    else
      render "edit"
    end
  end

  def destroy
    @basic = Basic.find_by_id(params[:id])
    @basic.destroy
    redirect_to basics_url
  end
end