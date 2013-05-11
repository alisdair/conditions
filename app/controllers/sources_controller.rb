class SourcesController < ApplicationController
  def index
    @sources = Source.all(order: "name")
  end
end
