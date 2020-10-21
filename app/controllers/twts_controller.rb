class TwtsController < ApplicationController
  before_action :set_twt, only: %i[show edit update destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @twts = Twt.all.order('created_at DESC')
    @twt = Twt.new
  end

  def show; end

  def new
    @twt = current_user.twts.build
  end

  def edit; end

  def create
    @twt = current_user.twts.build(twt_params)

    respond_to do |format|
      if @twt.save
        format.html { redirect_to root_path, notice: 'Twt was successfully created.' }
        format.json { render :show, status: :created, location: @twt }
      else
        format.html { render :new }
        format.json { render json: @twt.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @twt.update(twt_params)
        format.html { redirect_to @twt, notice: 'Twt was successfully updated.' }
        format.json { render :show, status: :ok, location: @twt }
      else
        format.html { render :edit }
        format.json { render json: @twt.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @twt.destroy
    respond_to do |format|
      format.html { redirect_to twts_url, notice: 'Twt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_twt
    @twt = Twt.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def twt_params
    params.require(:twt).permit(:twt)
  end
end
