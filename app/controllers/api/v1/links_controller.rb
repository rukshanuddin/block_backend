class Api::V1::LinksController < ApplicationController
  def index
    render json: Link.all
  end
  def show
    render json: Link.where(id: params[:id]).to_json
  end

end