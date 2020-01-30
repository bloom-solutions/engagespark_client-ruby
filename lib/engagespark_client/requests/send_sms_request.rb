module EngagesparkClient
  class SendSmsRequest

    include APIClientBase::Request.module(action: :post)
    attribute :token, String
    attribute :org_id, Integer
    attribute :to, String
    attribute :from, String
    attribute :message, String

    private

    def headers
      {
        "Content-Type" => "application/json",
        "Authorization" => "Token #{token}"
      }
    end

    def path
      "/v1/sms/phonenumber"
    end

    def body
      %i[org_id to from message].each_with_object({}) do |attr, hash|
        hash[attr.to_s.camelize(:lower)] = send(attr)
      end.to_json
    end

  end
end
