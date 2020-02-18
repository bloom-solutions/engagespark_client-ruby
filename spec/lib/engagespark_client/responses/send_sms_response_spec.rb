require "spec_helper"

module EngagesparkClient
  RSpec.describe SendSmsResponse do

    let(:raw_response_body) do
      {
        "error": "invalid 'to' number (not a valid number)",
        "messageId": "SMS20200218T132848-284-9990",
        "estimateParts": 0,
        "estimateMicro": 0,
        "estimate": "",
        "deliveryDeadline": "2020-02-19T13:28:48.71403623Z",
        "contactId": 0,
        "to": "6305",
        "message": "hullo"
      }.to_json
    end

    described_class::BODY_ATTRS.each do |attr, type|
      describe "##{attr}" do
        it "exposes `#{attr}` on the response" do
          response = described_class.new(body: raw_response_body)

          value = JSON.parse(raw_response_body)[attr.to_s.camelize(:lower)]
          value = DateTime.parse(value) if type == DateTime

          expect(response.send(attr)).to eq value
        end
      end
    end

  end
end
