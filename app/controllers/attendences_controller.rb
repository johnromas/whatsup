class AttendencesController < ApplicationController
	def create
    @event = Event.find(params[:event_id])
    attend = current_user.attendences.build(event: @event)
 		respond_to do |format|
	    if attend.save
    		format.html { redirect_to @event, notice: "You're attending this event!" }
    		format.js { render 'events/create' }
  		else
	  		format.html { redirect_to @event, error: "Oops, something went wrong! Please try again!" }
        format.json { render json: attend.errors, status: :unprocessable_entity }
	  	end
	  end
	end

	def destroy
	  @event = Event.find(params[:event_id])
		attend = current_user.attendences.where(event: @event).first

		attend.destroy
			flash[:notice] = "You're no longer subscribed to this event!"
			redirect_to events_path
	end
end