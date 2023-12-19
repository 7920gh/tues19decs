class Tues19decsController < ApplicationController
  before_action :set_tues19dec, only: %i[ show edit update destroy ]

  # GET /tues19decs or /tues19decs.json
  def index
    @tues19decs = Tues19dec.all
  end

  # GET /tues19decs/1 or /tues19decs/1.json
  def show
  end

  # GET /tues19decs/new
  def new
    @tues19dec = Tues19dec.new
  end

  # GET /tues19decs/1/edit
  def edit
  end

  # POST /tues19decs or /tues19decs.json
  def create
    @tues19dec = Tues19dec.new(tues19dec_params)

    respond_to do |format|
      if @tues19dec.save
        format.html { redirect_to tues19dec_url(@tues19dec), notice: "Tues19dec was successfully created." }
        format.json { render :show, status: :created, location: @tues19dec }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tues19dec.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tues19decs/1 or /tues19decs/1.json
  def update
    respond_to do |format|
      if @tues19dec.update(tues19dec_params)
        format.html { redirect_to tues19dec_url(@tues19dec), notice: "Tues19dec was successfully updated." }
        format.json { render :show, status: :ok, location: @tues19dec }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tues19dec.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tues19decs/1 or /tues19decs/1.json
  def destroy
    @tues19dec.destroy!

    respond_to do |format|
      format.html { redirect_to tues19decs_url, notice: "Tues19dec was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tues19dec
      @tues19dec = Tues19dec.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tues19dec_params
      params.require(:tues19dec).permit(:name, :email, :address, :phone, :description, :personaldata, :showemail, :trade, :location)
    end
end
