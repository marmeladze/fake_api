class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :update, :destroy, :attached_bills]

  # GET /people
  def index
    @people = Person.all

    render json: @people
  end

  def search
    @person = params[:ic_id].nil? ?  [] : Person.search(params[:ic_id])
    render json: @person
  end
  # GET /people/1
  def show
    render json: @person
  end

  def attached_bills
    @bills = @person.bills.where()
    render json: @bills
  end
  # POST /people
  def create
    @person = Person.new(person_params)

    if @person.save
      render json: @person, status: :created, location: @person
    else
      render json: @person.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /people/1
  def update
    if @person.update(person_params)
      render json: @person
    else
      render json: @person.errors, status: :unprocessable_entity
    end
  end

  # DELETE /people/1
  def destroy
    @person.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person
      @person = Person.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def person_params
      params.require(:person).permit(:ic_id, :tax_num, :ssn, :first_name, :last_name, :birthdate, :img)
    end
end
