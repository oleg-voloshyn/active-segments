# frozen_string_literal: true

namespace :active_segments do
  task rating: :environment do
    men_ids = User.where(gender: 0)
    woman_ids = User.where(gender: 1)
    Segment.all.each do |segment|
      men_results = Result.where(user_id: men_ids, segment_id: segment.id).where.not(moving_time: 0)
      woman_results = Result.where(user_id: woman_ids, segment_id: segment.id).where.not(moving_time: 0)
      men_lider = men_results.pluck(:moving_time).min.to_f
      woman_lider = woman_results.pluck(:moving_time).min.to_f
      men_results.each do |result|
        next if result.moving_time.zero?

        data = ((men_lider / result.moving_time.to_f) * 100).round(2)
        result.update(points: data)
      end
      woman_results.each do |result|
        next if result.moving_time.zero?

        data = ((woman_lider / result.moving_time.to_f) * 100).round(2)
        result.update(points: data)
      end

    end
  end
end
