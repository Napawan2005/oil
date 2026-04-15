class OillDevelopmentsController < ApplicationController
  before_action :set_oill_development, only: %i[ show update destroy ]

  # GET /oill_developments
  def index
    @oill_developments = OillDevelopment.all

    render json: @oill_developments
  end

  # GET /oill_developments/1
  def show
    render json: @oill_development
  end

  # POST /oill_developments
  def create
    @oill_development = OillDevelopment.new(oill_development_params)

    if @oill_development.save
      render json: @oill_development, status: :created, location: @oill_development
    else
      render json: @oill_development.errors, status: :unprocessable_content
    end
  end

  # PATCH/PUT /oill_developments/1
  def update
    if @oill_development.update(oill_development_params)
      render json: @oill_development
    else
      render json: @oill_development.errors, status: :unprocessable_content
    end
  end

  # DELETE /oill_developments/1
  def destroy
    @oill_development.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_oill_development
      @oill_development = OillDevelopment.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def oill_development_params
      params.fetch(:oill_development, {})
    end
end
