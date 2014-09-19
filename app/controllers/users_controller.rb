class UsersController < ApplicationController
  respond_to :html, :json

  def index
  end

  def autocomplete
    users = User.search(params[:term] + '*').records
    respond_with(users.map(&:name))
  end

  def search
  end
end
