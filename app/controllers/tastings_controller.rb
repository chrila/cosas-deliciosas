class TastingsController < ApplicationController
  before_action :set_tasting, only: %i[ show edit update destroy ]

  # GET /tastings or /tastings.json
  def index
    @tastings = Tasting.all
  end

  # GET /tastings/1 or /tastings/1.json
  def show
  end

  # GET /tastings/new
  def new
    @tasting = Tasting.new
  end

  # GET /tastings/1/edit
  def edit
  end

  # POST /tastings or /tastings.json
  def create
    @tasting = Tasting.new(tasting_params)

    respond_to do |format|
      if @tasting.save
        format.html { redirect_to @tasting, notice: "Tasting was successfully created." }
        format.json { render :show, status: :created, location: @tasting }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tasting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tastings/1 or /tastings/1.json
  def update
    respond_to do |format|
      if @tasting.update(tasting_params)
        format.html { redirect_to @tasting, notice: "Tasting was successfully updated." }
        format.json { render :show, status: :ok, location: @tasting }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tasting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tastings/1 or /tastings/1.json
  def destroy
    @tasting.destroy
    respond_to do |format|
      format.html { redirect_to tastings_url, notice: "Tasting was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tasting
      @tasting = Tasting.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tasting_params
      params.require(:tasting).permit(:place, :rating, :price, :serving_format_id, :comment, :beer_id, :currency_id)
    end
end
