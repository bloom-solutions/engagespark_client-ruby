require "spec_helper"

RSpec.describe "Sending SMS messages", vcr: {record: :once} do
  it "sends an SMS message to a phone" do

    client = EngagesparkClient.new(CONFIG)

    response = client.send_sms(
      to: CONFIG[:mobile],
      message: "Hello via engageSPARK",
    )

    aggregate_failures do
      expect(response).to be_success
      expect(response.error).to eq ""
      expect(response.message_id).to be_present
      expect(response.estimate_parts).to eq 1
      expect(response.estimate_micro).to eq 20000
      expect(response.estimate).to eq 0.02
      expect(response.delivery_deadline).to be_a DateTime
      expect(response.contact_id).to eq 0
      expect(response.to).to eq CONFIG[:mobile]
      expect(response.message).to eq "Hello via engageSPARK"
    end

  end
end
