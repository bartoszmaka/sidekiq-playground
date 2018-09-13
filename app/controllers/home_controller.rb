class HomeController < ApplicationController
  def index
    render :index, locals: {
      projects: Project.all,
      writers: Writer.all,
      articles: Article.all
    }
  end
end
