class RealStatesController < ApplicationController

  def index
    @real_states = RealState.all
    render json: @real_states
  end

  def create
    @real_state = RealState.new(real_state_params)
    if @real_state.save
      render json: @real_state
    else
      render json: {}
    end
  end

  def show
    @real_state = RealState.find params[:id]
    render json: @real_state
  end

  def destroy
      @real_state = RealState.find_by_id params[:id]
      message = {}
      if @real_state
        @real_state.destroy
        message[:message] = 'Recently removed record'
      else
        message[:message] = 'There is no real state with id:' + params[:id].to_s
      end
      render json:  message
  end

  def update
    @real_state = RealState.find_by_id params[:id]
    message = {}
    if @real_state
      @real_state.update(real_state_params)
      message[:message] = 'Newly updated record'
    else
      message[:message] = 'There is no real state with id:' + params[:id].to_s
    end
    render json: message
  end

  private
    # Only allow a list of trusted parameters through.
    def real_state_params
      params.require(:real_state).permit(:name, :type_col, :country, :city)
    end
end
