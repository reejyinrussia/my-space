class Api::PeopleController < ApplicationController
  before_action :set_person, only: [:show, :update, :destroy]
  before_action :authenticate_user!

  def index
    render json: Person.random(current_user)
  end

  def show
    render json: @person
  end

  def create
    person = Person.create(person_params)
    if person.save
      render json: person
    else
      render json: { errors: person.errors.full_messages.join(',') }, status: 422
    end
  end

  def update
    if @person.update(person_params)
      render json: @person
    else
      render json: { errors: @person.errors.full_messages.join(',') }, status: 422
    end
  end

  def delete
    @person.destroy
  end

  private
    def set_person
      @person = Person.find(params[:id])
    end

    def person_params
      params.require(:person).permit(:name, :house, :city, :quote, :avatar)
    end
end
