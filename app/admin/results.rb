ActiveAdmin.register Result do
  permit_params :moving_time, :points, :user_id, :segment_id
end
