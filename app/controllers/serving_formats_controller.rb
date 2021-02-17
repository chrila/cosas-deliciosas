class ServingFormatsController < ApplicationController
  before_action :set_serving_format, only: %i[ show edit update destroy ]

  # GET /serving_formats or /serving_formats.json
  def index
    @serving_formats = ServingFormat.all
  end

  # GET /serving_formats/1 or /serving_formats/1.json
  def show
  end

  # GET /serving_formats/new
  def new
    @serving_format = ServingFormat.new
  end

  # GET /serving_formats/1/edit
  def edit
  end

  # POST /serving_formats or /serving_formats.json
  def create
    @serving_format = ServingFormat.new(serving_format_params)

    respond_to do |format|
      if @serving_format.save
        format.html { redirect_to @serving_format, notice: "Serving format was successfully created." }
        format.json { render :show, status: :created, location: @serving_format }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @serving_format.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /serving_formats/1 or /serving_formats/1.json
  def update
    respond_to do |format|
      if @serving_format.update(serving_format_params)
        format.html { redirect_to @serving_format, notice: "Serving format was successfully updated." }
        format.json { render :show, status: :ok, location: @serving_format }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @serving_format.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /serving_formats/1 or /serving_formats/1.json
  def destroy
    @serving_format.destroy
    respond_to do |format|
      format.html { redirect_to serving_formats_url, notice: "Serving format was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_serving_format
      @serving_format = ServingFormat.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def serving_format_params
      params.require(:serving_format).permit(:name)
    end
end
