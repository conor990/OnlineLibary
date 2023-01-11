class ContributorsController < ApplicationController
  def show
    @contributor = Contributor.find_by(id: params[:id])
    if @contributor.nil?
       render 'not_found'
    else
       @contributor_books = @contributor.books
    end
  end
end