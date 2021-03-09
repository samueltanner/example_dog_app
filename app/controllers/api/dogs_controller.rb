class Api::DogsController < ApplicationController
  def create
    if current_user
      @dog = Dog.new(
        name: params[:name],
        age: params[:age],
        breed: params[:breed],
        user_id: current_user.id,
      )
      @dog.save
      render "show.json.jb"
    else
      render json: { message: "you must login to create a dog" }
    end
  end

  def index
    if current_user
      @dogs = Dog.all
      render "index.json.jb"
    else
      render json: { message: "you must login to look at dogs" }
    end
  end
end
