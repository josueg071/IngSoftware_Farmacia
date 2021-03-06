class DrogasController < ApplicationController
  before_action :set_droga, only: [:show, :edit, :update, :destroy]

  # GET /drogas
  # GET /drogas.json
  def index
    @drogas = Droga.all
  end

  # GET /drogas/1
  # GET /drogas/1.json
  def show
  end

  # GET /drogas/new
  def new
    @droga = Droga.new
  end

  # GET /drogas/1/edit
  def edit
  end

  # POST /drogas
  # POST /drogas.json
  def create
    @droga = Droga.new(droga_params)

    respond_to do |format|
      if @droga.save
        format.html { redirect_to @droga, notice: 'Droga was successfully created.' }
        format.json { render :show, status: :created, location: @droga }
      else
        format.html { render :new }
        format.json { render json: @droga.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /drogas/1
  # PATCH/PUT /drogas/1.json
  def update
    respond_to do |format|
      if @droga.update(droga_params)
        format.html { redirect_to @droga, notice: 'Droga was successfully updated.' }
        format.json { render :show, status: :ok, location: @droga }
      else
        format.html { render :edit }
        format.json { render json: @droga.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drogas/1
  # DELETE /drogas/1.json
  def destroy
    @droga.destroy
    respond_to do |format|
      format.html { redirect_to drogas_url, notice: 'Droga was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_droga
      @droga = Droga.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def droga_params
      params.require(:droga).permit(:droga_descrip, :droga_active)
    end
end
