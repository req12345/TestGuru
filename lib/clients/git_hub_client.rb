class GitHubClient

  ROOT_ENDPOINT = 'https://api.github.com'
  ACCESS_TOKEN = ENV['ACCESS_TOKEN_GIT_HUB']

  def initialize
    @http_client = setup_http_client
  end

  def create_gist(params)
    @http_client.post('gists') do |request|
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
