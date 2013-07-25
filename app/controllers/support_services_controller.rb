class SupportServicesController < ApplicationController
  before_action :set_support_service, only: [:show, :edit, :update, :destroy]

  # GET /support_services
  # GET /support_services.json
  def index
    @support_services = SupportService.all
  end

  # GET /support_services/1
  # GET /support_services/1.json
  def show
  end

  # GET /support_services/new
  def new
    @support_service = SupportService.new
  end

  # GET /support_services/1/edit
  def edit
  end

  # POST /support_services
  # POST /support_services.json
  def create
    @support_service = SupportService.new(support_service_params)

    respond_to do |format|
      if @support_service.save
        format.html { redirect_to @support_service, notice: 'Support service was successfully created.' }
        format.json { render action: 'show', status: :created, location: @support_service }
      else
        format.html { render action: 'new' }
        format.json { render json: @support_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /support_services/1
  # PATCH/PUT /support_services/1.json
  def update
    respond_to do |format|
      if @support_service.update(support_service_params)
        format.html { redirect_to @support_service, notice: 'Support service was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @support_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /support_services/1
  # DELETE /support_services/1.json
  def destroy
    @support_service.destroy
    respond_to do |format|
      format.html { redirect_to support_services_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_support_service
      @support_service = SupportService.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def support_service_params
      params.require(:support_service).permit(:name)
    end
end
