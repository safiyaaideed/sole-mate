class AuthenticsController < ApplicationController
  before_action :set_authentic, only: %i[ show edit update destroy ]
  before_action :set_categories


  # GET /authentics or /authentics.json
  def index
    @authentics = Authentic.all
  end

  # GET /authentics/1 or /authentics/1.json
  def show
  end

  # GET /authentics/new
  def new
    @authentic = Authentic.new
  end

  # GET /authentics/1/edit
  def edit
    if Authentic.find_by(id: params[:id], user_id: current_user.id)
    else 
      respond_to do |format|
        format.html { redirect_to authentics_url, alert: "Unauthorized access"}
      end
    end

  end

  # POST /authentics or /authentics.json
  def create
    # @authentic = Authentic.new(authentic_params.merge(user: current_user))
    @authentic = Authentic.new(Sneakers: authentic_params[:Sneakers], name: authentic_params[:name], description: authentic_params[:description], price: authentic_params[:price], availability: [:availability], category_id: authentic_params[:category_id], user: current_user)
    @authentic.photo.attach(authentic_params[:photo])
    respond_to do |format|
      if @authentic.save
        format.html { redirect_to @authentic, notice: "The sneaker was successfully created." }
        format.json { render :show, status: :created, location: @authentic }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @authentic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /authentics/1 or /authentics/1.json
  def update
    respond_to do |format|
      if  Authentic.find_by(id: params[:id], user_id: current_user.id) 
          if @authentic.update(authentic_params)
            format.html { redirect_to @authentic, notice: "Authentic was successfully updated." }
            format.json { render :show, status: :ok, location: @authentic }
          else
            format.html { render :edit, status: :unprocessable_entity }
            format.json { render json: @authentic.errors, status: :unprocessable_entity }
          end
      else 
        respond_to do |format|
          format.html { redirect_to authentics_url, alert: "Unauthorized access"}
        end
      end   
    end
  end

  # DELETE /authentics/1 or /authentics/1.json
  def destroy
    if  Authentic.find_by(id: params[:id], user_id: current_user.id) 
      @authentic.destroy
      respond_to do |format|
        format.html { redirect_to authentics_url, notice: "Authentic was successfully destroyed." }
        format.json { head :no_content }
      end
    else
      respond_to do |format|
        format.html { redirect_to authentics_url, alert: "Unauthorized access"}
      end
    end    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_authentic
      @authentic = Authentic.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def authentic_params
      params.require(:authentic).permit(:Sneakers, :name, :description, :price, :availability, :category_id, :photo )
    end

    def set_categories
      @categories=Category.all
    end
end
 