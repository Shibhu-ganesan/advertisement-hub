class AdhubsController < ApplicationController
  before_action :set_adhub, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]

  # GET /adhubs or /adhubs.json
  def index
    @adhubs = Adhub.all
    @comments = Comment.all
  end

  # GET /adhubs/1 or /adhubs/1.json
  def show
  end

  # GET /adhubs/new
  def new
    #@adhub = Adhub.new
    @adhub = current_user.adhubs.build
  end

  # GET /adhubs/1/edit
  def edit
  end

  # POST /adhubs or /adhubs.
  def create
    #@adhub = Adhub.new(adhub_params)
    @adhub = current_user.adhubs.build(adhub_params)

    respond_to do |format|
      if @adhub.save
        format.html { redirect_to @adhub, notice: "Advertisement was successfully created." }
        format.json { render :show, status: :created, location: @adhub }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @adhub.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adhubs/1 or /adhubs/1.json
  def update
    respond_to do |format|
      if @adhub.update(adhub_params)
        format.html { redirect_to @adhub, notice: "Advertisement was successfully updated." }
        format.json { render :show, status: :ok, location: @adhub }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @adhub.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adhubs/1 or /adhubs/1.json
  def destroy
    @adhub = Adhub.find(params[:id])
    @adhub.destroy
    respond_to do |format|
      format.html { redirect_to adhubs_url, notice: "Advertisement was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def correct_user
    @adhub = current_user.adhubs.find_by(id: params[:id])
    redirect_to adhubs_path, notice: " You are not allowed to access these pages " if @adhub.nil?
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adhub
      @adhub = Adhub.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def adhub_params
      params.require(:adhub).permit(:title, :description, :user_id, :image, :name)
    end
end
