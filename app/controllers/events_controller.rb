class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  # GET /events
  # GET /events.json
  def index
    @events = Event.all
  end

  def by_type
    f = Person.joins(:events)
    f = f.where(:events => { :kind => params[:search][:type] })
    f = f.group('people.id')
    f = f.select('person_events.*, max(events.date) as last_event_date')
    @personevents = f.load

    @people_ids = Array.new

    if(@personevents.any?)
      @personevents.each do |x|
        @people_ids << x.person_id
      end
    end

    @type = params[:search][:type]
  end

  def by_person 
    name = params[:search][:name]
    nameArray = name.split(" ")

    first_name = nil
    last_name = nil

    if(nameArray[0] != nil)
      first_name = nameArray[0]
    end

    if(nameArray[1] != nil)
      last_name = nameArray[1]
      @people = Person.where(:first_name => first_name, :last_name => last_name)
    else
      @people = Person.where("first_name = ? or last_name = ?",first_name, first_name)
    end
  end

  def edit_attendees
    delete_list = params[:remove_ids]
    if(delete_list != nil)
      delete_list.each do |i|
        pe = PersonEvent.find(i)
        pe.destroy
      end

    end

    pes = params[:person_events]
    if(pes != nil)
      pes.keys.each do |pe|
        this_pe = PersonEvent.find_by_id(pe)
        if(this_pe  != nil)
          this_pe.contacted = params[:person_events][pe][:contacted]
          this_pe.responded = params[:person_events][pe][:responded]
          this_pe.attending = params[:person_events][pe][:attending]
          this_pe.paid = params[:person_events][pe][:paid]
          this_pe.attended = params[:person_events][pe][:attended]
          this_pe.notes = params[:person_events][pe][:notes]
          this_pe.save
        end
      end
    end

    redirect_to :back
  end

  def add_attendees
    @event = Event.find(params[:id])
  end

  def add_attendees_2
    new_people = params[:add_ids]
    eventa_id = params[:event][:id]
    if(new_people != nil)
      new_people.each do |person|
        new_person_event = PersonEvent.new
        new_person_event.person_id = person
        new_person_event.event_id  = eventa_id
        new_person_event.save
      end
    end
    @event = Event.find(params[:event][:id])
    redirect_to event_path(@event)
  end

  def mailing
    @arr = params[:people]
    if(@arr != nil && @arr.any?)
      @personevents = PersonEvent.find(@arr)
    else
      @personevents = Array.new
    end
    respond_to do |format|
      format.xls
    end
  end

  def mailing_search
    @event = Event.find(params[:id])
    @pes = @event.person_events
    @search = params[:search]
    if(@search[:contacted] != 'all')
      @pes = @pes.where(:contacted => @search[:contacted])
    end
    if(@search[:responded] != 'all')
    @pes = @pes.where(:responded => @search[:responded])
    end
    if(@search[:attending] != 'all')
    @pes = @pes.where(:attending => @search[:attending])
    end
    if(@search[:paid] != 'all')
    @pes = @pes.where(:paid => @search[:paid])
    end
    if(@search[:attended] != 'all')
    @pes = @pes.where(:attended => @search[:attended])
    end
    @arr = Array.new
    
    @pes.each do |p|
      @arr << p.id
    end

    redirect_to :action => "mailing", :format => "xls", :people => @arr
  end

  # GET /events/1
  # GET /events/1.json
  def show
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render action: 'show', status: :created, location: @event }
      else
        format.html { render action: 'new' }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
      def set_event
        @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:comments, :name, :date, :time, :kind, :location, :street_address, :city, :state, :zip_code, {:person_events => []})
    end
end
