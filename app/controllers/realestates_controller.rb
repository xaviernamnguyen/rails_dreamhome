class RealestatesController < ApplicationController
  before_action :set_realestate, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]
  # GET /realestates or /realestates.json
  def index
    @realestates = Realestate.all
  end

  # GET /realestates/1 or /realestates/1.json
  def show
  end

  # GET /realestates/new
  def new
    # @realestate = Realestate.new
    @realestate = current_user.realestates.build
  end

  # GET /realestates/1/edit
  def edit
  end

  # POST /realestates or /realestates.json
  def create
    # @realestate = Realestate.new(realestate_params)
    @realestate = current_user.realestates.build(realestate_params)
    respond_to do |format|
      if @realestate.save
        format.html { redirect_to @realestate, notice: "Realestate was successfully created." }
        format.json { render :show, status: :created, location: @realestate }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @realestate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /realestates/1 or /realestates/1.json
  def update
    respond_to do |format|
      if @realestate.update(realestate_params)
        format.html { redirect_to @realestate, notice: "Realestate was successfully updated." }
        format.json { render :show, status: :ok, location: @realestate }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @realestate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /realestates/1 or /realestates/1.json
  def destroy
    @realestate.destroy
    respond_to do |format|
      format.html { redirect_to realestates_url, notice: "Realestate was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def correct_user
    @realestate = current_user.realestates.find_by(id: params[:id])
    redirect_to realestates_path, notice: "Not Authorized To Edit This Real Estate" if @realestate.nil?
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_realestate
      @realestate = Realestate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def realestate_params
      params.require(:realestate).permit(:title, :address, :price, :desc, :map, :toilet, :room, :feat_air_conditioner, :feat_broadband, :feat_hot_water, :feat_garage, :feat_heater, :user_id, :image)
    end
end
