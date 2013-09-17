class CecComplaintsController < ApplicationController
  # GET /cec_complaints
  # GET /cec_complaints.json
  def index
    @cec_complaints = CecComplaint.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cec_complaints }
    end
  end

  # GET /cec_complaints/1
  # GET /cec_complaints/1.json
  def show
    @cec_complaint = CecComplaint.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cec_complaint }
    end
  end

  # GET /cec_complaints/new
  # GET /cec_complaints/new.json
  def new
    @cec_complaint = CecComplaint.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cec_complaint }
    end
  end

  # GET /cec_complaints/1/edit
  def edit
    @cec_complaint = CecComplaint.find(params[:id])
  end

  # POST /cec_complaints
  # POST /cec_complaints.json
  def create
    @cec_complaint = CecComplaint.new(params[:cec_complaint])

    respond_to do |format|
      if @cec_complaint.save
        format.html { redirect_to @cec_complaint, notice: 'Cec complaint was successfully created.' }
        format.json { render json: @cec_complaint, status: :created, location: @cec_complaint }
      else
        format.html { render action: "new" }
        format.json { render json: @cec_complaint.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cec_complaints/1
  # PUT /cec_complaints/1.json
  def update
    @cec_complaint = CecComplaint.find(params[:id])

    respond_to do |format|
      if @cec_complaint.update_attributes(params[:cec_complaint])
        format.html { redirect_to @cec_complaint, notice: 'Cec complaint was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @cec_complaint.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cec_complaints/1
  # DELETE /cec_complaints/1.json
  def destroy
    @cec_complaint = CecComplaint.find(params[:id])
    @cec_complaint.destroy

    respond_to do |format|
      format.html { redirect_to cec_complaints_url }
      format.json { head :ok }
    end
  end
end
