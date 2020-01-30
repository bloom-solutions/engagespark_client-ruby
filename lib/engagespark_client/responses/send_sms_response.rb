module EngagesparkClient
  class SendSmsResponse

    include APIClientBase::Response.module

    BODY_ATTRS = {
      error: String,
      message_id: String,
      estimate_parts: Integer,
      estimate_micro: Integer,
      estimate: Decimal,
      delivery_deadline: DateTime,
      contact_id: Integer,
      to: String,
      message: String,
    }.freeze

    attribute :body, String, lazy: true, default: :default_body
    attribute :parsed_body, String, lazy: true, default: :default_parsed_body

    BODY_ATTRS.each do |attr, type|
      attribute attr, type, lazy: true, default: :"default_#{attr}"

      define_method "default_#{attr}" do
        parsed_body[attr.to_s.camelize(:lower)]
      end
    end

    def default_body
      raw_response.body
    end

    def parsed_body
      JSON.parse(body)
    end

  end
end
