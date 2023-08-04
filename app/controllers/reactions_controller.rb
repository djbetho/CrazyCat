class ReactionsController < ApplicationController
  before_action :set_poost, only: %i[show edit update destroy]
  before_action :authenticate_usser!

 

  def user_reaction
 
    @usser = current_usser 
    @type = params[:reaction_type]
    @poost = Poost.find(params[:poost_id]) if params[:poost_id]
    @kind = params[:kind]

    respond_to do |format|
     
      reactions = Reaction.find_by(usser_id: @usser.id, poost_id: @poost.id)

      if reactions
        format.html { redirect_to poost_path(@poost), notice: 'No puedes dar mas like a este Gatito' }
      else
      
            @reaction = Reaction.new(usser_id: @usser.id, poost_id: @poost.id, reaction_type: @type, kind: @kind)
                
            if @reaction.save
              format.html { redirect_to poost_path(@poost), notice: 'la reaccion a sido creada' }
            else
              format.html { redirect_to poost_path(@poost), notice: 'algo malo paso' }
            end
          
      end
    end
  end

end
