class Invitation < ApplicationRecord
    validates :customer_email, presence: true

    before_validation :sanitize_email_field

    private
      def sanitize_email_field
        if customer_email.include?('<')
            self.display_name = customer_email.split('<')[0].chomp(' ')
            self.customer_email = customer_email.split('<')[1].chomp('>')
            
        elsif customer_email.include?('.')
            email_local_part = customer_email.split('@')[0]
            self.display_name = email_local_part.split('.')[0] + ' ' + email_local_part.split('.')[1]
        end
      end


end
