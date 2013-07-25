class PersonEventsController < ApplicationController
  before_action :set_person_event, only: [:show, :edit, :update, :destroy]

  # GET /person_events
  # GET /person_events.json
  def index
    @person_events = PersonEvent.all
  end

  # GET /person_events/1
  # GET /person_events/1.json
  def show
  end

  # GET /person_events/new
  def new
    @person_event = PersonEvent.new
  end

  # GET /person_events/1/edit
  def edit
  end

  # POST /person_events
  # POST /person_events.json
  def create
    @person_event = PersonEvent.new(person_event_params)

    respond_to do |format|
      if @person_event.save
        format.html { redirect_to @person_event, notice: 'Person event was successfully created.' }
        format.json { render action: 'show', status: :created, location: @person_event }
      else
        format.html { render action: 'new' }
        format.json { render json: @person_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /person_events/1
  # PATCH/PUT /person_events/1.json
  def update
    respond_to do |format|
      if @person_event.update(person_event_params)
        format.html { redirect_to @person_event, notice: 'Person event was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @person_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /person_events/1
  # DELETE /person_events/1.json
  def destroy
    @person_event.destroy
    respond_to do |format|
      format.html { redirect_to person_events_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person_event
      @person_event = PersonEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def person_event_params
      params.require(:person_event).permit(:event_id, :person_id)
    end
end
