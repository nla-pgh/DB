class ReportsController < ApplicationController
	def index
	end

	def students_events
	end

	def events_overall_data
		start_date = params[:search][:start_date]
		end_date   = params[:search][:end_date]

		@start_date = start_date
		@end_date = end_date

	    f = Person.joins(:events)
	    f = f.where('events.date between ? and ?',start_date, end_date)
	    f = f.select('person_events.*')

	    @pes = f.load

	    @number_of_person_events = @pes.count

	    f = Person.joins(:events)
	    f = f.where('events.date between ? and ?',start_date, end_date)
	    f = f.select('distinct people.id')
		
		@people = f.load

		@number_of_people = @people.count
	end

end
