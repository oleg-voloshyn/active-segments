# frozen_string_literal: true

namespace :active_segments do
  task refresh_results: :pause_scheduler do
    @client ||= Strava::Api::Client.new(access_token: ActiveSegments::Application.credentials.strava_token)
    Segment.all.each do |segment|
      segment_leaderboard = @client.segment_leaderboard(segment.link)
      segment_leaderboard.entries.each do |e|
        user = User.find_by(name: e.athlete_name)
        next unless user

        user.results.find_by(segment_id: segment.id).update(moving_time: e.moving_time)
      end
      puts "Segment: #{segment.id}"
    end
  end
end
