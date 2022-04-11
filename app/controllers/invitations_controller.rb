class InvitationsController < ApplicationController

  def new
    @cycle = Cycle.find(params[:cycle_id])
    @invitation = Invitation.new

  end

    def create


        @invitation = Invitation.new(invitation_params)
    
        respond_to do |format|
          if @invitation.save
            format.html {  }
            format.js {  }
          else
            format.js {}
              
            
          end
        end
    end


    def invitation_params
        params.require(:invitation).permit(:customer_email, :message, :cycle_id, :display_name)
      end
end
