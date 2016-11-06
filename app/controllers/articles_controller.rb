class ArticlesController < ApplicationController

  def index
  articles = Article.all
  render json: {status: 200, articles: articles}
end

def show
  article = Article.find(params[:id])
  render json: {status: 200, article: article}
end

def create
  article = Article.new(article_params)

  if article.save
    render json: {status: 200, article: article}
  else
    render json: {status: 422, article: article, errors: article.errors}
  end
end

def update
  article = Article.find(params[:id])
  article.update(article_params)

  render json: {status: 200, article: article}
end

def destroy
  article = Article.destroy(params[:id])

  render json: {status: 204}

end

private

def article_params
  params.required(:article).permit(:title, :description, :abstract, :article_url)
end


end
