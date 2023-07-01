class BirdsController < ApplicationController

  wrap_parameters format: []
  # GET /birds
  def index
    birds = Bird.all
@@ -22,4 +23,15 @@ def show
    end
  end

  def create
    bird = Bird.create(bird_params)
    render json: bird, status: :created
  end

  private

  def bird_params
    params.permit(:name, :species)
  end

end
