class User < ApplicationRecord
  has_many :results, dependent: :destroy
  belongs_to :race
  after_create :set_results

  def set_results
    race.segments.each do |segment|
      Result.create(user_id: id, segment_id: segment.id, points: 0, moving_time: 0)
    end
  end
end
