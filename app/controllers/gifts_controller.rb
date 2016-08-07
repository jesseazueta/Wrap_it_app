class GiftsController < ApplicationController
  before_action :set_gift, only: [:show, :edit, :update, :destroy]
  before_filter :current_user, only: [:show, :create, :destroy]

  def index
    @gifts = Gift.all
    @user = User.find(params[:id])
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
    @user = current_user
  end

  # GET /projects/new
  def new
    @gift = current_user.gifts.new
  end

  def edit
  end

  def create
    @gift = current_user.gifts.build(gift_params)


    respond_to do |format|
      if @gift.save
        format.html { redirect_to "/gifts/#{@gift.id}", notice: 'Item was successfully added.' }
        format.json { render :show, status: :created, location: @gift }
      else
        format.html { render :new }
        format.json { render json: @gift.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    respond_to do |format|
      if @gift.update(gift_params)
        format.html { redirect_to @gift, notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @gift }
      else
        format.html { render :edit }
        format.json { render json: @gift.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @gift = Gift.find(params[:id])
    @gift.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Item was successfully removed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gift
      @gift = Gift.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gift_params
      params.require(:gift).permit(:name, :model, :price, :category, :user_id)
    end
end
