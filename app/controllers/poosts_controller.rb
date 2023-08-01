class PoostsController < ApplicationController
  before_action :set_poost, only: %i[ show edit update destroy ]

  # GET /poosts or /poosts.json
  def index
    @posts = Poost.all
  end

  # GET /poosts/1 or /poosts/1.json
  def show
    @post = Poost.find(params[:id])

    @comment = Comeent.new
    @comments = @post.comeents

  end

  # GET /poosts/new
  def new
    @poost = Poost.new
  end

  # GET /poosts/1/edit
  def edit
  end

  # POST /poosts or /poosts.json
  def create
    @poost = Poost.new(poost_params)

    respond_to do |format|
      if @poost.save
        format.html { redirect_to poost_url(@poost), notice: "Poost was successfully created." }
        format.json { render :show, status: :created, location: @poost }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @poost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /poosts/1 or /poosts/1.json
  def update
    respond_to do |format|
      if @poost.update(poost_params)
        format.html { redirect_to poost_url(@poost), notice: "Poost was successfully updated." }
        format.json { render :show, status: :ok, location: @poost }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @poost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poosts/1 or /poosts/1.json
  def destroy
    @poost.destroy

    respond_to do |format|
      format.html { redirect_to poosts_url, notice: "Poost was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poost
      @poost = Poost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def poost_params
      params.require(:poost).permit(:image,:title, :description)
    end
end
