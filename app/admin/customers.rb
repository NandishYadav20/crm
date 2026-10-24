ActiveAdmin.register Customer do
  permit_params :full_name, :phone_number, :email_address, :notes, :image
  filter :full_name
  filter :phone_number
  filter :email_address
  filter :notes
  form do |f|
    f.inputs do
      f.input :full_name
      f.input :phone_number
      f.input :email_address
      f.input :notes
      f.input :image, as: :file
    end
    f.actions
  end
end
