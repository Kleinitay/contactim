class SheetsController < ApplicationController
  # GET /sheets
  # GET /sheets.json
  def index
    @sheets = Sheet.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sheets }
    end
  end

  # GET /sheets/1
  # GET /sheets/1.json
  def show
    @sheet = Sheet.find(params[:id])
    @sheet_records = @sheet.sheet_records

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sheet }
    end
  end

  # GET /sheets/new
  # GET /sheets/new.json
  def new
    @sheet = Sheet.new
    @basic_field_types = FieldType.basic_fields
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sheet }
    end
  end

  # GET /sheets/1/edit
  def edit
    @sheet = Sheet.find(params[:id])
  end

  # POST /sheets
  # POST /sheets.json
  def create
    @sheet = Sheet.new(params[:sheet])
    field_types = params[:fields]
    field_types.each do |field_id|
      @sheet.field_types.create(field_type_id: field_id)
    end
    respond_to do |format|
      if @sheet.save
        format.html { redirect_to @sheet, notice: 'Sheet was successfully created.' }
        format.json { render json: @sheet, status: :created, location: @sheet }
      else
        format.html { render action: "new" }
        format.json { render json: @sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sheets/1
  # PUT /sheets/1.json
  def update
    @sheet = Sheet.find(params[:id])

    respond_to do |format|
      if @sheet.update_attributes(params[:sheet])
        format.html { redirect_to @sheet, notice: 'Sheet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sheets/1
  # DELETE /sheets/1.json
  def destroy
    @sheet = Sheet.find(params[:id])
    @sheet.destroy

    respond_to do |format|
      format.html { redirect_to sheets_url }
      format.json { head :no_content }
    end
  end

  def new_record
    @sheet = Sheet.find(params[:sheet_id])
    @sheet_records = sheet.field_types
  end

  def add_record
    @sheet = Sheet.find(params[:sheet_id])
    @errors = @sheet.add_record(params[:record], current_user)
    if @errors.size <= 0
      redirect_to @sheet, notice: 'record added'
    else
      redirect_to new_record
    end 
  end

  def delete_record
    sheet = Sheet.find(params[:id])
    record = SheetRecord.find(params[:record_id])
    if record.user_id == current_user.id || sheet.user_id == current_user.id
      record.destroy
    else
      #show error message
    end
  end

end
