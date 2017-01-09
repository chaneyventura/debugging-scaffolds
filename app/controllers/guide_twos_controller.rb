class GuideTwosController < ApplicationController
  before_action :set_guide_two, only: [:show, :edit, :update, :destroy]

  # GET /guide_twos
  # GET /guide_twos.json
  def index
    @guide_twos = GuideTwo.all
  end

  # GET /guide_twos/1
  # GET /guide_twos/1.json
  def show
  end

  # GET /guide_twos/new
  def new
    @guide_two = GuideTwo.new
  end

  # GET /guide_twos/1/edit
  def edit
  end

  # POST /guide_twos
  # POST /guide_twos.json
  def create
    @guide_two = GuideTwo.new(guide_two_params)

    respond_to do |format|
      if @guide_two.save
        format.html { redirect_to @guide_two, notice: 'Guide two was successfully created.' }
        format.json { render :show, status: :created, location: @guide_two }
      else
        format.html { render :new }
        format.json { render json: @guide_two.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /guide_twos/1
  # PATCH/PUT /guide_twos/1.json
  def update
    respond_to do |format|
      if @guide_two.update(guide_two_params)
        format.html { redirect_to @guide_two, notice: 'Guide two was successfully updated.' }
        format.json { render :show, status: :ok, location: @guide_two }
      else
        format.html { render :edit }
        format.json { render json: @guide_two.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /guide_twos/1
  # DELETE /guide_twos/1.json
  def destroy
    @guide_two.destroy
    respond_to do |format|
      format.html { redirect_to guide_twos_url, notice: 'Guide two was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guide_two
      @guide_two = GuideTwo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def guide_two_params
      params.require(:guide_two).permit(:title)
    end
end
