class ContributorsController < ApplicationController
  def show
    @contributors = Contributor.find(params[:id])
    @contributor_books = @contributors.books
  end


end
