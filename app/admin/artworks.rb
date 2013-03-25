ActiveAdmin.register Artwork do
  filter :series
  filter :title
  filter :medium
  filter :year
  filter :home_image

  form :partial => "form"

  index do
    column("Artwork", :sortable => :id) {|artwork| link_to "##{artwork.id} ", admin_artwork_path(artwork) }
    column :series
    column :title
    column :medium
    column :year
    column :home_image
  end
end
