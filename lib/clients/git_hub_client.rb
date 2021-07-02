class GitHubClient

  ROOT_ENDPOINT = 'https://api.github.com'
<<<<<<< HEAD
  ACCESS_TOKEN = ENV['ACCESS_TOKEN_GIT_HUB']
=======
  ACCESS_TOKEN = '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'
>>>>>>> 2e37e79da496cdc1c2e0acf13530ae408974a5ad

  def initialize
    @http_client = setup_http_client
  end

  def create_gist(params)
<<<<<<< HEAD
    @http_client.post('gists') do |request|
=======
    @http_client.post('gist') do |request|
>>>>>>> 2e37e79da496cdc1c2e0acf13530ae408974a5ad
      request.headers['Autorization'] = "token #{ACCESS_TOKEN}"
      request.headers['Content-Type'] = 'applications/json'
      request.body = params.to_json
    end
  end

  private

  def setup_http_client
<<<<<<< HEAD

=======
>>>>>>> 2e37e79da496cdc1c2e0acf13530ae408974a5ad
    Faraday.new(url: ROOT_ENDPOINT)
  end
end
