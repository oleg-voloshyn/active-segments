ActiveAdmin.register Segment do
  permit_params :name, :link

  index do
    selectable_column
    id_column
    column :name
    column :link
    actions
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :link
    end
    f.actions
  end
end
