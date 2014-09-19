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
    @facets = search.response['facets']

    render :index
  end
end
