class ContributorsController < ApplicationController
  def show
    @contributor = Contributor.find_by(id: params[:id])
    if @contributor.nil?
       render '..views/devise/sessions/new'
    else
       @contributor_books = @contributor.books
    end
  end
end




#The show method is called when the /contributors/:id route is accessed,The find_by method is used to find the contributor in the database with the specified ID. If no contributor was found, the login view will be rendered. If a contributor is found, the @contributor_books variable is set to the array of books that are associated with that contributor. 