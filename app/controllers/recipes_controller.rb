class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :update, :destroy]
  def safe_params
    p 'PARAMS:'
    p params.inspect
    p 'END PARAMS'
    params.require(:recipe).permit!
  end
  # GET /recipes
  def index
    @recipes = Recipe.order(created_at: :desc)
    render json: @recipes
  end
  # PAGINATION CALLS FOR INDEX
  # def index_page
  #   @recipes_per_page = 8
  #   @offset = params[:id] * @recipes_per_page
  #   @recipes = Recipe.order(created_at: :desc).limit(@recipes_per_page).offset(@offset)
  # end
  # GET /recipes/1
  def show
    render json: @recipe
  end
  # POST /recipes
  def create
    @recipe = Recipe.new(safe_params)
    if @recipe.save
      render json: @recipe, status: :created, location: @recipe
    else
      render json: @recipe.errors, status: :unprocessable_entity
    end
  end
  # PATCH/PUT /recipes/1
  def update
    if @recipe.update(safe_params)
      render json: @recipe
    else
      render json: @recipe.errors, status: :unprocessable_entity
    end
  end
  # DELETE /recipes/1
  def destroy
    @recipe.destroy
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end
    # Only allow a trusted parameter "white list" through.
    def recipe_params
      params.require(:recipe).permit(:name, :photo, :source_url, :serving_size, :ingredients, :instructions, :health_labels)
    end
end
