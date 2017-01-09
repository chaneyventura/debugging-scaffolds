class SodapopsController < ApplicationController
  before_action :set_sodapop, only: [:show, :edit, :update, :destroy]

  # GET /sodapops
  # GET /sodapops.json
  def index
    @sodapops = Sodapop.all
  end

  # GET /sodapops/1
  # GET /sodapops/1.json
  def show
  end

  # GET /sodapops/new
  def new
    @sodapop = Sodapop.new
  end

  # GET /sodapops/1/edit
  def edit
  end

  # POST /sodapops
  # POST /sodapops.json
  def create
    @sodapop = Sodapop.new(sodapop_params)

    respond_to do |format|
      if @sodapop.save
        format.html { redirect_to @sodapop, notice: 'Sodapop was successfully created.' }
        format.json { render :show, status: :created, location: @sodapop }
      else
        format.html { render :new }
        format.json { render json: @sodapop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sodapops/1
  # PATCH/PUT /sodapops/1.json
  def update
    respond_to do |format|
      if @sodapop.update(sodapop_params)
        format.html { redirect_to @sodapop, notice: 'Sodapop was successfully updated.' }
        format.json { render :show, status: :ok, location: @sodapop }
      else
        format.html { render :edit }
        format.json { render json: @sodapop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sodapops/1
  # DELETE /sodapops/1.json
  def destroy
    @sodapop.destroy
    respond_to do |format|
      format.html { redirect_to sodapops_url, notice: 'Sodapop was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sodapop
      @sodapop = Sodapop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sodapop_params
      params.require(:sodapop).permit(:title, :description)
    end
end
