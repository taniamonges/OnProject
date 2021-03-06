class MaterialMovementsController < ApplicationController
  before_action :set_material_movement, only: [:show, :edit, :update, :destroy]

  # GET /material_movements
  # GET /material_movements.json
  def index
    @material_movements = MaterialMovement.all
  end

  # GET /material_movements/1
  # GET /material_movements/1.json
  def show
  end

  # GET /material_movements/new
  def new
    @material_movement = MaterialMovement.new
  end

  # GET /material_movements/1/edit
  def edit
  end

  # POST /material_movements
  # POST /material_movements.json
  def create
    @material_movement = MaterialMovement.new(material_movement_params)

    respond_to do |format|
      if @material_movement.save
        format.html { redirect_to @material_movement, notice: 'Material movement was successfully created.' }
        format.json { render :show, status: :created, location: @material_movement }
      else
        format.html { render :new }
        format.json { render json: @material_movement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /material_movements/1
  # PATCH/PUT /material_movements/1.json
  def update
    respond_to do |format|
      if @material_movement.update(material_movement_params)
        format.html { redirect_to @material_movement, notice: 'Material movement was successfully updated.' }
        format.json { render :show, status: :ok, location: @material_movement }
      else
        format.html { render :edit }
        format.json { render json: @material_movement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /material_movements/1
  # DELETE /material_movements/1.json
  def destroy
    @material_movement.destroy
    respond_to do |format|
      format.html { redirect_to material_movements_url, notice: 'Material movement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_material_movement
      @material_movement = MaterialMovement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def material_movement_params
      params.require(:material_movement).permit(:fecha, :motivo)
    end
end
