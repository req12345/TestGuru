module ApplicationHelper
  def github_url(author, repo)
    link_to repo, "https://github.com/#{author}/#{repo}", target: '_blank'
  end

  def year_current
    Time.now.year
  end
end
