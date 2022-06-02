require 'pry'
class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/lists" do
    List.all.to_json(methods: [:tasks])
    # List.all.to_json()
  end

  post "/tasks" do
    Task.create(description: params["description"], priority: params["priority"], completed: params["completed"], list_id: params["list_id"])
  end

  get "/lists/:id" do
    list = List.find(params[:id])
    list.to_json  #add methods of deleting here and editing
  end

  delete "/lists/:id" do
    list = List.find(params[:id])
    list.destroy
    list.review.to_json
  end

  # 2 more methods
  # delete
  # patch

end
