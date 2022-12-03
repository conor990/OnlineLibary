class SiteController < ApplicationController
 
  def home
  end

  def about
  end

  def contact
  end

  def search
    response = HTTParty.get("https://api.publicapis.org/categories")
    @response = JSON.parse(response.body)
    @categories = @response["categories"]
  end

  def gbooks
    response = HTTParty.get("https://simple-books-api.glitch.me/books?type=fiction")
    @response = JSON.parse(response.body)
    @book1= @response[0]["name"]
    @book2 = @response[1]["name"]
    @book3 = @response[2]["name"]
    @book4 = @response[3]["name"]
  end 

  def contributors
    @user = User.find(params[:id])
  end
end
