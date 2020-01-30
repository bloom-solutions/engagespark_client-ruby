module EngagesparkClient
  class Client

    include APIClientBase::Client.module(default_opts: :default_opts)
    api_action :send_sms

    private

    def default_opts
      { host: host, token: token, org_id: org_id }
    end

  end
end
