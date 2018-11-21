class Show < ActiveRecord::Base
  def self.highest_rating
    show = self.order(rating: :desc).take
    show.rating
  end
end
