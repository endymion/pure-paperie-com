module Extensions
  module UUID
    extend ActiveSupport::Concern

    included do
      set_primary_key 'uuid'
      before_create :generate_uuid
      
      def generate_uuid
        self.id = UUIDTools::UUID.random_create.to_s
      end
      
      # Active Record's set_primary_key doesn't quite get this accomplished.
      def self.find(id)
        self.find_by_uuid(id)
      end
      
    end
  end
end