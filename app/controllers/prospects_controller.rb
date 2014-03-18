class ProspectsController < ApplicationController
  before_action :set_prospect, only: [:show]

  def index
    @prospects = Prospect.all
  end

  def show
    Pageview.create(page: "prospect", ip: request.remote_ip)
  end

  def new
    @prospect = Prospect.new
    Pageview.create(page: "landing page", ip: request.remote_ip)
  end

  def create
    @prospect = Prospect.new(prospect_params)

    respond_to do |format|
      if @prospect.save
        format.html { redirect_to @prospect, notice: 'Prospect was successfully created.' }
        format.json { render action: 'show', status: :created, location: @prospect }
      else
        format.html { render action: 'new' }
        format.json { render json: @prospect.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prospect
      @prospect = Prospect.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prospect_params
      params.require(:prospect).permit(:email)
    end
end
