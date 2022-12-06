class ContributorsController < ApplicationController
  def show
    @contributors = Contributor.find(params[:id])
  end


end
