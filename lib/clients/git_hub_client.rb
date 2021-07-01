class GitHubClient

  ROOT_ENDPOINT = 'https://api.github.com'
  ACCESS_TOKEN = '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'

  def initialize
    @http_client = setup_http_client
  end

  def create_gist(params)
    @http_client.post('gist') do |request|
      request.headers['Autorization'] = "token #{ACCESS_TOKEN}"
      request.headers['Content-Type'] = 'applications/json'
      request.body = params.to_json
    end
  end

  private

  def setup_http_client
    Faraday.new(url: ROOT_ENDPOINT)
  end
end
