class Articles3sController < ApplicationController
  before_action :set_articles3, only: [:show, :edit, :update, :destroy]

  # GET /articles3s
  # GET /articles3s.json
  def index
    @articles3s = Articles3.all
  end

  # GET /articles3s/1
  # GET /articles3s/1.json
  def show
  end

  # GET /articles3s/new
  def new
    @articles3 = Articles3.new
  end

  # GET /articles3s/1/edit
  def edit
  end

  # POST /articles3s
  # POST /articles3s.json
  def create
    @articles3 = Articles3.new(articles3_params)

    respond_to do |format|
      if @articles3.save
        format.html { redirect_to @articles3, notice: 'Articles3 was successfully created.' }
        format.json { render :show, status: :created, location: @articles3 }
      else
        format.html { render :new }
        format.json { render json: @articles3.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articles3s/1
  # PATCH/PUT /articles3s/1.json
  def update
    respond_to do |format|
      if @articles3.update(articles3_params)
        format.html { redirect_to @articles3, notice: 'Articles3 was successfully updated.' }
        format.json { render :show, status: :ok, location: @articles3 }
      else
        format.html { render :edit }
        format.json { render json: @articles3.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles3s/1
  # DELETE /articles3s/1.json
  def destroy
    @articles3.destroy
    respond_to do |format|
      format.html { redirect_to articles3s_url, notice: 'Articles3 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_articles3
      @articles3 = Articles3.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def articles3_params
      params.require(:articles3).permit(:title, :description)
    end
end
