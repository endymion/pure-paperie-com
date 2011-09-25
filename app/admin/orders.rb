ActiveAdmin.register Order do
  filter :created_at, :as => :date_range
  filter :updated_at, :as => :date_range
  filter :state, :as => :string
  filter :zip, :as => :string
  
  index do
    column 'date', :created_at
    column :last
    column :first
    column :state
    
    default_actions
  end
end
