class TestsController < ApplicationController
  def index
    render inline: '<p>Alls tests are: <%= %Test.all %></p>'
  end
end
