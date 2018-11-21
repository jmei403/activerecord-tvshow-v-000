class Show < ActiveRecord::Base
  def highest_rating
    Show.find_by(rating:).order(rating: :desc).limit(1)
  end
end
