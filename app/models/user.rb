class User < ApplicationRecord
  has_many :results, dependent: :destroy
  after_create :set_results

  def set_results
    Segment.all.each do |segment|
      Result.create(user_id: id, segment_id: segment.id, points: 0, moving_time: 0)
    end
  end
end
