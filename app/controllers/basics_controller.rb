class BasicsController < ApplicationController
  before_filter :authenticate_user!
  
  # GET /basics
  # GET /basics.json
  def index
    @basics = Basic.all
  end

  # GET /basics/1
  # GET /basics/1.json
  def show
  end

  # GET /basics/new
  def new
    @basic = Basic.new
  end

  # GET /basics/1/edit
  def edit
  end

  # POST /basics
  # POST /basics.json
  def create
    @basic = Basic.new(basic_params)

    respond_to do |format|
      if @basic.save
        format.html { redirect_to @basic, notice: 'Basic was successfully created.' }
        format.json { render action: 'show', status: :created, location: @basic }
      else
        format.html { render action: 'new' }
        format.json { render json: @basic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /basics/1
  # PATCH/PUT /basics/1.json
  def update
    respond_to do |format|
      if @basic.update(basic_params)
        format.html { redirect_to @basic, notice: 'Basic was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @basic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /basics/1
  # DELETE /basics/1.json
  def destroy
    @basic.destroy
    respond_to do |format|
      format.html { redirect_to basics_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_basic
      @basic = Basic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def basic_params
      params.require(:basic).permit(:name, :necessary_stuff, :how_to_make)
    end
end
