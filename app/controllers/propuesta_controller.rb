class PropuestaController < ApplicationController
  before_action :set_propuesta, only: [:show, :edit, :update, :destroy]

  # GET /propuesta
  # GET /propuesta.json
  def index
    @propuesta = Propuesta.all
  end

  # GET /propuesta/1
  # GET /propuesta/1.json
  def show
  end

  # GET /propuesta/new
  def new
    @propuesta = Propuesta.new
  end

  # GET /propuesta/1/edit
  def edit
  end

  # POST /propuesta
  # POST /propuesta.json
  def create
    @propuesta = Propuesta.new(propuestum_params)

    respond_to do |format|
      if @propuestum.save
        format.html { redirect_to @propuestum, notice: 'Propuestum was successfully created.' }
        format.json { render :show, status: :created, location: @propuestum }
      else
        format.html { render :new }
        format.json { render json: @propuestum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /propuesta/1
  # PATCH/PUT /propuesta/1.json
  def update
    respond_to do |format|
      if @propuestum.update(propuestum_params)
        format.html { redirect_to @propuestum, notice: 'Propuestum was successfully updated.' }
        format.json { render :show, status: :ok, location: @propuestum }
      else
        format.html { render :edit }
        format.json { render json: @propuestum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /propuesta/1
  # DELETE /propuesta/1.json
  def destroy
    @propuestum.destroy
    respond_to do |format|
      format.html { redirect_to propuesta_url, notice: 'Propuestum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_propuestum
      @propuestum = Propuestum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def propuestum_params
      params.require(:propuestum).permit(:user_id, :title, :object, :finality, :scope_id, :subject_id)
    end
end
