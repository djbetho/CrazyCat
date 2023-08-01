class ComeentsController < ApplicationController
  before_action :set_comeent, only: %i[ show edit update destroy ]

  # GET /comeents or /comeents.json
  def index
    @comeents = Comeent.all
  end

  # GET /comeents/1 or /comeents/1.json
  def show
    @comeent = Comeent.find(params[:id])

  end

  # GET /comeents/new
  def new
    @poost = Poost.find(params[:poost_id])
    @comeent = Comeent.new
  end

  # GET /comeents/1/edit
  def edit
  end

  # POST /comeents or /comeents.json 
  def create


    @poost = Poost.find(params[:comeent][:poost_id])

    @comeent = Comeent.new(comeent_params)

    respond_to do |format|
      if @comeent.save
        format.html { redirect_to comeent_url(@comeent), notice: "Comeent was successfully created." }
       else
        format.html { render :new, status: :unprocessable_entity }
       end
    end
  end

  # PATCH/PUT /comeents/1 or /comeents/1.json
  def update
    respond_to do |format|
      if @comeent.update(comeent_params)
        format.html { redirect_to comeent_url(@comeent), notice: "Comeent was successfully updated." }
       else
        format.html { render :edit, status: :unprocessable_entity }
       end
    end
  end

  # DELETE /comeents/1 or /comeents/1.json
  def destroy
    @comeent.destroy

    respond_to do |format|
      format.html { redirect_to comeents_url, notice: "Comeent was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comeent
      @comeent = Comeent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def comeent_params
      params.require(:comeent).permit(:content, :usser_id, :poost_id)
      
    end
end
