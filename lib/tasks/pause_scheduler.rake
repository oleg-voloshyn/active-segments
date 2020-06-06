# frozen_string_literal: true

task pause_scheduler: :environment do
  if Rails.application.secrets.pause_scheduler == true
    puts "Scheduler Paused"
    exit
  end
end
