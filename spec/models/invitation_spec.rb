require 'rails_helper'

RSpec.describe Invitation, type: :model do
  context 'before validation' do  
    it "removes numbers from name and capitalizes" do
      test_invitation = Invitation.create(customer_email: 'john.smith.1985@example.com')
      expect(test_invitation.display_name).to eql('John Smith')
    end

    it "parses email local parts with multiple dots" do
      test_invitation = Invitation.create(customer_email: 'john.r.smith@gmail.com')
      expect(test_invitation.display_name).to eql('John R Smith')
    end

    it "parses email local parts with zero dots" do
      test_invitation = Invitation.create(customer_email: 'johnsmith@gmail.com')
      expect(test_invitation.display_name).to eql(nil)
    end

    it "parses name with email input" do
      test_invitation = Invitation.create(customer_email: 'Jonathan Smith <john.smith@example.com>')
      expect(test_invitation.display_name).to eql('Jonathan Smith')
    end
  end
end