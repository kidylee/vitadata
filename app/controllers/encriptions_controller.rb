class EncriptionsController < ApplicationController
  before_action :set_encription, only: [:show, :edit, :update, :destroy]

  # GET /encriptions
  # GET /encriptions.json
  def index
    @encriptions = Encription.all
    respond_to do |format|
      
      format.html 
      format.json { render json: @encriptions }
    
    end
  end

  # GET /encriptions/1
  # GET /encriptions/1.json
  def show
    @e = Encription.find(params[:id])

    respond_to do |format|
      format.html 
      format.json { render @e }
    
    end
  end

  # GET /encriptions/new
  def new
    @encription = Encription.new
  end

  # GET /encriptions/1/edit
  def edit
  end

  # POST /encriptions
  # POST /encriptions.json
  def create
    @encription = Encription.new(encription_params)

    respond_to do |format|
      if @encription.save
        format.html { redirect_to @encription, notice: 'Encription was successfully created.' }
        format.json { render :show, status: :created, location: @encription }
      else
        format.html { render :new }
        format.json { render json: @encription.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /encriptions/1
  # PATCH/PUT /encriptions/1.json
  def update
    respond_to do |format|
      if @encription.update(encription_params)
        format.html { redirect_to @encription, notice: 'Encription was successfully updated.' }
        format.json { render :show, status: :ok, location: @encription }
      else
        format.html { render :edit }
        format.json { render json: @encription.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /encriptions/1
  # DELETE /encriptions/1.json
  def destroy
    @encription.destroy
    respond_to do |format|
      format.html { redirect_to encriptions_url, notice: 'Encription was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_encription
      @encription = Encription.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def encription_params
      params.require(:encription).permit(:name, :value, :user_id)
    end
end
