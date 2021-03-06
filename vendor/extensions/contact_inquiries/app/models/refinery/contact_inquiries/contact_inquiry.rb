
module Refinery
  module ContactInquiries
    class ContactInquiry < Refinery::Core::BaseModel
      self.table_name = 'refinery_contact_inquiries'



      # Add some validation here if you want to validate the user's input
      # We have validated the first string field for you.
      validates :name, :presence => true
      validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
    end
  end
end
