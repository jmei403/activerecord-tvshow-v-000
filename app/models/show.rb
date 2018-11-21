class Show < ActiveRecord::Base
  def self.highest_rating
    self.find_by(rating:)
  end
end
