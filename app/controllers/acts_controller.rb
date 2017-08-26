class ActsController < ApplicationController
  def new
  	@act = Act.new
  end

  def show
  	@act = Act.find(params[:id])
  end

  def edit
  	@act = Act.find(params[:id])
  end

  def index
  end
end
