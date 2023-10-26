ActiveAdmin.register JobOpening do
  permit_params :title, :one_line_description, :employment_type, :location, :experience_level, 
  :brief_description, :is_active, :updated_by

  controller do
    before_update do |job_opening|
      job_opening.updated_by = current_admin_user.email if current_admin_user
    end
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :one_line_description
      f.input :employment_type
      f.input :location
      f.input :experience_level
      f.input :is_active, label: "Is_Active"
      f.input :brief_description, as: :quill_editor
    end
    f.actions
  end

  show do
    attributes_table do
      row :id
      row :title
      row :one_line_description
      row :employment_type
      row :location
      row :experience_level
      row :is_active
      row :brief_description do |job_opening|
        job_opening.brief_description.html_safe
      end
      row :created_at
      row :updated_at
      row :updated_by
    end    
  end

  index do
    selectable_column
    id_column
    column :title
    column :one_line_description
    column :employment_type
    column :location
    column :experience_level
    column :is_active
    column :brief_description do |job_opening|
      brief_description = job_opening.brief_description.html_safe.to_s
      if brief_description.length > 100
        brief_description[0, 100] + '...'
      else
        brief_description
      end
    end
    column :updated_by
    actions
  end
end