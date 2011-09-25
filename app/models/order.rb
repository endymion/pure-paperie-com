class Order < ActiveRecord::Base
  include Extensions::UUID

  scope :recently_created, lambda { |limit|
      {
        :order => "orders.created_at DESC",
        :limit => limit
      }
    }
  scope :recently_updated, lambda { |limit|
      {
        :order => "orders.updated_at DESC",
        :limit => limit
      }
    }
end
