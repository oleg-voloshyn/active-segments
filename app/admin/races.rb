ActiveAdmin.register Race do
  permit_params :name, :description, :start_date, :end_date
end
