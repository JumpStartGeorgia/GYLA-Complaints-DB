class PecComplaintsController < ApplicationController
  # GET /pec_complaints
  # GET /pec_complaints.json
  def index
    @pec_complaints = PecComplaint.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pec_complaints }
    end
  end

  # GET /pec_complaints/1
  # GET /pec_complaints/1.json
  def show
    @pec_complaint = PecComplaint.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pec_complaint }
    end
  end

  # GET /pec_complaints/new
  # GET /pec_complaints/new.json
  def new
    @pec_complaint = PecComplaint.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pec_complaint }
    end
  end

  # GET /pec_complaints/1/edit
  def edit
    @pec_complaint = PecComplaint.find(params[:id])
  end

  # POST /pec_complaints
  # POST /pec_complaints.json
  def create
    @pec_complaint = PecComplaint.new(params[:pec_complaint])

    respond_to do |format|
      if @pec_complaint.save
        format.html { redirect_to @pec_complaint, notice: 'Pec complaint was successfully created.' }
        format.json { render json: @pec_complaint, status: :created, location: @pec_complaint }
      else
        format.html { render action: "new" }
        format.json { render json: @pec_complaint.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pec_complaints/1
  # PUT /pec_complaints/1.json
  def update
    @pec_complaint = PecComplaint.find(params[:id])
   #abort params[:pec_complaint][:pec_complaint_files_attributes]['0'][:id].inspect

    respond_to do |format|
      if @pec_complaint.update_attributes(params[:pec_complaint])
        format.html { redirect_to @pec_complaint, notice: 'Pec complaint was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @pec_complaint.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pec_complaints/1
  # DELETE /pec_complaints/1.json
  def destroy
    @pec_complaint = PecComplaint.find(params[:id])
    @pec_complaint.destroy

    respond_to do |format|
      format.html { redirect_to pec_complaints_url }
      format.json { head :ok }
    end
  end
end
