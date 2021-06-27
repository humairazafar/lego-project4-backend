class NlegosController < ApplicationController
  before_action :set_nlego, only: [:show, :update, :destroy]

  # GET /nlegos
  def index
    @nlegos = Nlego.all

    render json: @nlegos
  end

  # GET /nlegos/1
  def show
    render json: @nlego
  end

  # POST /nlegos
  def create
    @nlego = Nlego.new(nlego_params)

    if @nlego.save
      render json: @nlego, status: :created, location: @nlego
    else
      render json: @nlego.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /nlegos/1
  def update
    if @nlego.update(nlego_params)
      render json: @nlego
    else
      render json: @nlego.errors, status: :unprocessable_entity
    end
  end

  # DELETE /nlegos/1
  def destroy
    @nlego.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nlego
      @nlego = Nlego.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def nlego_params
      params.require(:nlego).permit(:name, :details, :img_url)
    end
end
