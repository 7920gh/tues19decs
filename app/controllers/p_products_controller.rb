class PProductsController < ApplicationController
  before_action :set_p_product, only: %i[ show edit update destroy ]

  # GET /p_products or /p_products.json
  def index
    @p_products = PProduct.all
  end

  # GET /p_products/1 or /p_products/1.json
  def show
  end

  # GET /p_products/new
  def new
    @p_product = PProduct.new
  end

  # GET /p_products/1/edit
  def edit
  end

  # POST /p_products or /p_products.json
  def create
    @p_product = PProduct.new(p_product_params)

    respond_to do |format|
      if @p_product.save
        format.html { redirect_to p_product_url(@p_product), notice: "P product was successfully created." }
        format.json { render :show, status: :created, location: @p_product }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @p_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /p_products/1 or /p_products/1.json
  def update
    respond_to do |format|
      if @p_product.update(p_product_params)
        format.html { redirect_to p_product_url(@p_product), notice: "P product was successfully updated." }
        format.json { render :show, status: :ok, location: @p_product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @p_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /p_products/1 or /p_products/1.json
  def destroy
    @p_product.destroy!

    respond_to do |format|
      format.html { redirect_to p_products_url, notice: "P product was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_p_product
      @p_product = PProduct.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def p_product_params
      params.require(:p_product).permit(:title, :description, :image_url, :price)
    end
end
