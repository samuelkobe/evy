module Refinery
  module Works
    class Work < Refinery::Core::BaseModel
      self.table_name = 'refinery_works'

      attr_accessible :title, :service_id, :service_type, :description, :photo_1_id, :photo_2_id, :photo_3_id, :photo_4_id, :photo_5_id, :photo_6_id, :photo_7_id, :photo_8_id, :position

      acts_as_indexed :fields => [:title, :service_type, :description]

      validates :title, :presence => true, :uniqueness => true

      belongs_to :service, :class_name => 'Refinery::Service::Work'
      
      belongs_to :photo_1, :class_name => '::Refinery::Image'

      belongs_to :photo_2, :class_name => '::Refinery::Image'

      belongs_to :photo_3, :class_name => '::Refinery::Image'

      belongs_to :photo_4, :class_name => '::Refinery::Image'

      belongs_to :photo_5, :class_name => '::Refinery::Image'

      belongs_to :photo_6, :class_name => '::Refinery::Image'

      belongs_to :photo_7, :class_name => '::Refinery::Image'

      belongs_to :photo_8, :class_name => '::Refinery::Image'
    end
  end
end
