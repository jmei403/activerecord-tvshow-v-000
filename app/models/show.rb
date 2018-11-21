class Show < ActiveRecord::Base
  def self.highest_rating
    show = self.order(rating: :desc).take
    show.rating
  end

  def self.most_popular_show
    self.order(rating: :desc).take
  end

  def self.lowest_rating
    show = self.order(rating: :asc).take
    show.rating
  end

  def self.least_popular_show
    self.order(rating: :asc).take
  end
end
