class PeopleController < ApplicationController
  def index
    @people = Person.all 
  end

  def show
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_params)

    if @person.save
      redirect_to person_path(@person.id)
    else 
      render :new
    end 
  end

  def edit
    @person = Person.find(params[:id])
  end 

  def destroy
    Person.find(params[:id]).destroy 
    redirect_to root_path
  end 

  private 
  
  def person_params
    params.require(:person).permit(:first_name, :last_name, :avatar, :email, :phone)
  end 
end
