class PoetriesController < ApplicationController
  before_action :set_poetry, only: [:show, :edit, :update, :destroy]

  # GET /poetries
  # GET /poetries.json
  def index
    @poetries = Poetry.all
  end

  # GET /poetries/1
  # GET /poetries/1.json
  def show
  end

  # GET /poetries/new
  def new
    @poetry = Poetry.new
  end

  # GET /poetries/1/edit
  def edit
  end

  # POST /poetries
  # POST /poetries.json
  def create
    @poetry = Poetry.new(poetry_params)

    respond_to do |format|
      if @poetry.save
        format.html { redirect_to @poetry, notice: 'Poetry was successfully created.' }
        format.json { render :show, status: :created, location: @poetry }
      else
        format.html { render :new }
        format.json { render json: @poetry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /poetries/1
  # PATCH/PUT /poetries/1.json
  def update
    respond_to do |format|
      if @poetry.update(poetry_params)
        format.html { redirect_to @poetry, notice: 'Poetry was successfully updated.' }
        format.json { render :show, status: :ok, location: @poetry }
      else
        format.html { render :edit }
        format.json { render json: @poetry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poetries/1
  # DELETE /poetries/1.json
  def destroy
    @poetry.destroy
    respond_to do |format|
      format.html { redirect_to poetries_url, notice: 'Poetry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poetry
      @poetry = Poetry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def poetry_params
      params.require(:poetry).permit(:title, :body, :views)
    end
end
