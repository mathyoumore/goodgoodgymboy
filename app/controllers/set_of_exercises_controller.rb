class SetOfExercisesController < ApplicationController
  before_action :set_set_of_exercise, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /set_of_exercises
  # GET /set_of_exercises.json
  def index
    @set_of_exercises = SetOfExercise.all
  end

  # GET /set_of_exercises/1
  # GET /set_of_exercises/1.json
  def show
  end

  # GET /set_of_exercises/new
  def new
    @set_of_exercise = SetOfExercise.new
  end

  # GET /set_of_exercises/1/edit
  def edit
  end

  # POST /set_of_exercises
  # POST /set_of_exercises.json
  def create
    @set_of_exercise = SetOfExercise.new(set_of_exercise_params)

    respond_to do |format|
      if @set_of_exercise.save
        format.html { redirect_to @set_of_exercise, notice: 'Set of exercise was successfully created.' }
        format.json { render :show, status: :created, location: @set_of_exercise }
      else
        format.html { render :new }
        format.json { render json: @set_of_exercise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /set_of_exercises/1
  # PATCH/PUT /set_of_exercises/1.json
  def update
    respond_to do |format|
      if @set_of_exercise.update(set_of_exercise_params)
        format.html { redirect_to @set_of_exercise, notice: 'Set of exercise was successfully updated.' }
        format.json { render :show, status: :ok, location: @set_of_exercise }
      else
        format.html { render :edit }
        format.json { render json: @set_of_exercise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /set_of_exercises/1
  # DELETE /set_of_exercises/1.json
  def destroy
    @set_of_exercise.destroy
    respond_to do |format|
      format.html { redirect_to set_of_exercises_url, notice: 'Set of exercise was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_set_of_exercise
      @set_of_exercise = SetOfExercise.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def set_of_exercise_params
      params.require(:set_of_exercise).permit(:exercise_id, :weight, :reps)
    end
end
