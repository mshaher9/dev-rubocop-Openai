module OpenAI
  class Engines
    def initialize(access_token: nil, organization_id: nil)
      Ruby::OpenAI.configuration.access_token = access_token if access_token
      Ruby::OpenAI.configuration.organization_id = organization_id if organization_id
    end

    def list
      OpenAI::Client.get(path: "/engines")
    end

    def retrieve(id:)
      OpenAI::Client.get(path: "/engines/#{id}")
    end
  end
end
