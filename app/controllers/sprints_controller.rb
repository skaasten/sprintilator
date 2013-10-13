class SprintsController < ApplicationController
  def index
    render json: Sprint.all
  end

  def show
    render json: Sprint.find(params[:id])
  end
end
