class PostTwosController < ApplicationController
  before_action :set_post_two, only: [:show, :edit, :update, :destroy]

  # GET /post_twos
  # GET /post_twos.json
  def index
    @post_twos = PostTwo.all
  end

  # GET /post_twos/1
  # GET /post_twos/1.json
  def show
  end

  # GET /post_twos/new
  def new
    @post_two = PostTwo.new
  end

  # GET /post_twos/1/edit
  def edit
  end

  # POST /post_twos
  # POST /post_twos.json
  def create
    @post_two = PostTwo.new(post_two_params)

    respond_to do |format|
      if @post_two.save
        format.html { redirect_to @post_two, notice: 'Post two was successfully created.' }
        format.json { render :show, status: :created, location: @post_two }
      else
        format.html { render :new }
        format.json { render json: @post_two.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /post_twos/1
  # PATCH/PUT /post_twos/1.json
  def update
    respond_to do |format|
      if @post_two.update(post_two_params)
        format.html { redirect_to @post_two, notice: 'Post two was successfully updated.' }
        format.json { render :show, status: :ok, location: @post_two }
      else
        format.html { render :edit }
        format.json { render json: @post_two.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post_twos/1
  # DELETE /post_twos/1.json
  def destroy
    @post_two.destroy
    respond_to do |format|
      format.html { redirect_to post_twos_url, notice: 'Post two was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_two
      @post_two = PostTwo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_two_params
      params.require(:post_two).permit(:title)
    end
end
