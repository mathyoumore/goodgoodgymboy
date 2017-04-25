class PersonalRecordsController < ApplicationController
  before_action :set_personal_record, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /personal_records
  # GET /personal_records.json
  def index
    @personal_records = PersonalRecord.all
  end

  # GET /personal_records/1
  # GET /personal_records/1.json
  def show
  end

  # GET /personal_records/new
  def new
    @personal_record = PersonalRecord.new
  end

  # GET /personal_records/1/edit
  def edit
  end

  # POST /personal_records
  # POST /personal_records.json
  def create
    @personal_record = PersonalRecord.new(personal_record_params)

    respond_to do |format|
      if @personal_record.save
        format.html { redirect_to @personal_record, notice: 'Personal record was successfully created.' }
        format.json { render :show, status: :created, location: @personal_record }
      else
        format.html { render :new }
        format.json { render json: @personal_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /personal_records/1
  # PATCH/PUT /personal_records/1.json
  def update
    respond_to do |format|
      if @personal_record.update(personal_record_params)
        format.html { redirect_to @personal_record, notice: 'Personal record was successfully updated.' }
        format.json { render :show, status: :ok, location: @personal_record }
      else
        format.html { render :edit }
        format.json { render json: @personal_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personal_records/1
  # DELETE /personal_records/1.json
  def destroy
    @personal_record.destroy
    respond_to do |format|
      format.html { redirect_to personal_records_url, notice: 'Personal record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personal_record
      @personal_record = PersonalRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def personal_record_params
      params.require(:personal_record).permit(:user_id, :exercise_id, :sets, :repititions, :one_rep_max)
    end
end
