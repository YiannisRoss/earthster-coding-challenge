class Invitation < ApplicationRecord
    validates :customer_email, presence: true
    validates_format_of :customer_email, with: URI::MailTo::EMAIL_REGEXP

    before_validation :sanitize_email_field
    
      private

      def sanitize_email_field
        email_local_part = customer_email.split('@')[0]

        if customer_email.include?('<')
            self.display_name = customer_email.split('<')[0].chomp(' ')
            self.customer_email = customer_email.split('<')[1].chomp('>')
            
        elsif email_local_part.include?('.')

            email_local_part = customer_email.split('@')[0].tr("0-9", "")

            #this loop is responsible for displaying the name of email local parts like "john.r.smith@gmail.com"
            i = 0
            display_name = email_local_part.split('.')[0].capitalize
            while i < email_local_part.split('.').length - 1
                display_name = display_name + ' ' + email_local_part.split('.')[i + 1].capitalize
                i = i+1
            end

            self.display_name = display_name
        end
      end


end
