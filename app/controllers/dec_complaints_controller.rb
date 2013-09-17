class DecComplaintsController < ApplicationController
  # GET /dec_complaints
  # GET /dec_complaints.json
  def index
    @dec_complaints = DecComplaint.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dec_complaints }
    end
  end

  # GET /dec_complaints/1
  # GET /dec_complaints/1.json
  def show
    @dec_complaint = DecComplaint.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dec_complaint }
    end
  end

  # GET /dec_complaints/new
  # GET /dec_complaints/new.json
  def new
    @dec_complaint = DecComplaint.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dec_complaint }
    end
  end

  # GET /dec_complaints/1/edit
  def edit
    @dec_complaint = DecComplaint.find(params[:id])
  end

  # POST /dec_complaints
  # POST /dec_complaints.json
  def create
    @dec_complaint = DecComplaint.new(params[:dec_complaint])

    respond_to do |format|
      if @dec_complaint.save
        format.html { redirect_to @dec_complaint, notice: 'Dec complaint was successfully created.' }
        format.json { render json: @dec_complaint, status: :created, location: @dec_complaint }
      else
        format.html { render action: "new" }
        format.json { render json: @dec_complaint.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dec_complaints/1
  # PUT /dec_complaints/1.json
  def update
    @dec_complaint = DecComplaint.find(params[:id])

    respond_to do |format|
      if @dec_complaint.update_attributes(params[:dec_complaint])
        format.html { redirect_to @dec_complaint, notice: 'Dec complaint was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @dec_complaint.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dec_complaints/1
  # DELETE /dec_complaints/1.json
  def destroy
    @dec_complaint = DecComplaint.find(params[:id])
    @dec_complaint.destroy

    respond_to do |format|
      format.html { redirect_to dec_complaints_url }
      format.json { head :ok }
    end
  end
end
