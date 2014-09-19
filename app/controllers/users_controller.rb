class UsersController < ApplicationController
  respond_to :html, :json

  def index
    @users = User.none
  end

  def autocomplete
    users = User.search(params[:term] + '*').records
    respond_with(users.map(&:name))
  end

  def search
    @users = User.search('*' + params[:q] + '*').records
    render :index
  end
end
