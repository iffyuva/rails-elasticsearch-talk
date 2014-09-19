class UsersController < ApplicationController
  respond_to :html, :json

  def index
    @users = User.none
  end

  def autocomplete
    users = User.autocomplete(params[:term])
    respond_with(users.map(&:name))
  end

  def search
    search = User.search_exact(params[:q])
    @users  = search.records.to_a
    @aggregations = search.response['aggregations']

    render :index
  end
end
