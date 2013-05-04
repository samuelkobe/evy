module Refinery
  module Services
    class Service < Refinery::Core::BaseModel
      self.table_name = 'refinery_services'

      attr_accessible :name, :description, :photo_id, :position

      acts_as_indexed :fields => [:name, :description]

      validates :name, :presence => true, :uniqueness => true

      has_many :works
      belongs_to :photo, :class_name => '::Refinery::Image'
    end
  end
end
