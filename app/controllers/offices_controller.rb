class OfficesController < ApplicationController
  before_action :set_office, only: %i[show edit update destroy]

  # GET /offices
  def index
    @offices = Office.includes(:employee).all
  end

  # GET /offices/1
  def show
  end

  # GET /offices/new
  def new
    @office = Office.new
  end

  # GET /offices/1/edit
  def edit
  end

  # POST /offices
  def create
    @office = Office.new(office_params)

    if @office.save
      redirect_to @office, notice: "Office was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /offices/1
  def update
    if @office.update(office_params)
      redirect_to @office, notice: "Office was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /offices/1
  def destroy
    @office.destroy
    redirect_to offices_url, notice: "Office was successfully destroyed."
  end

  private

  def set_office
    @office = Office.find(params[:id])
  end

  def office_params
    params.require(:office).permit(:number, :employee_id)
  end
end
