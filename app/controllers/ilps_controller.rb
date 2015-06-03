class IlpsController < ApplicationController
  before_action :set_ilp, only: [:show, :edit, :update, :destroy]

  # GET /ilps
  # GET /ilps.json
  def index
    @ilps = Ilp.all
  end

  # GET /ilps/1
  # GET /ilps/1.json
  def show
  end

  # GET /ilps/new
  def new
    @ilp = Ilp.new
  end

  # GET /ilps/1/edit
  def edit
  end

  # POST /ilps
  # POST /ilps.json
  def create
    @ilp = Ilp.new(ilp_params)

    respond_to do |format|
      if @ilp.save
        format.html { redirect_to @ilp, notice: 'Ilp was successfully created.' }
        format.json { render :show, status: :created, location: @ilp }
      else
        format.html { render :new }
        format.json { render json: @ilp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ilps/1
  # PATCH/PUT /ilps/1.json
  def update
    respond_to do |format|
      if @ilp.update(ilp_params)
        format.html { redirect_to @ilp, notice: 'Ilp was successfully updated.' }
        format.json { render :show, status: :ok, location: @ilp }
      else
        format.html { render :edit }
        format.json { render json: @ilp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ilps/1
  # DELETE /ilps/1.json
  def destroy
    @ilp.destroy
    respond_to do |format|
      format.html { redirect_to ilps_url, notice: 'Ilp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ilp
      @ilp = Ilp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ilp_params
      params.require(:ilp).permit(:user_id, :title, :object, :finality, :scope, :subject)
    end
end
