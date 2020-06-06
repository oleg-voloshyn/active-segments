ActiveAdmin.register User do
  permit_params :name, :full_name, :link
end
