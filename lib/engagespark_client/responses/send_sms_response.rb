module EngagesparkClient
  class SendSmsResponse

    include APIClientBase::Response.module

    attribute :error, String, lazy: true, default: :default_error
    attribute :message_id, String, lazy: true, default: :default_message_id
    attribute(:estimate_parts, Integer, {
      lazy: true,
      default: :default_estimate_parts,
    })
    attribute :estimate_micro, Integer, lazy: true, default: :default_estimate_micro
    attribute :estimate, Decimal, lazy: true, default: :default_estimate
    attribute :delivery_deadline, DateTime, lazy: true, default: :default_delivery_deadline
    attribute :contact_id, Integer, lazy: true, default: :default_contact_id
    attribute :to, String, lazy: true, default: :default_to
    attribute :message, String, lazy: true, default: :default_message
    
  end
end
