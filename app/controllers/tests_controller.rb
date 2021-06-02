class TestsController < ApplicationController
  def index
    tests = Test.all
    tests_html = ''
    tests_html << '<h1>All tests:</h1>'
    tests.each { |t| tests_html << "<p>#{t.title}</p>" }
    render inline: tests_html
  end
end
