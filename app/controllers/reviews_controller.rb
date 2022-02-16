class ReviewsController < ApplicationController

  def top
    @restaurants = Restaurant.where(stars: 5)
  end
end
