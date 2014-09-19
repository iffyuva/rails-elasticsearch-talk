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
    @users = User.search_exact(params[:q])
    render :index
  end
end
