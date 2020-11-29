class ArticlesController < ApplicationController

    def index # show all articles
        @articles = Article.all
    end

    def show # finds article by id
        @article = Article.find(params[:id])
    end

    def new 
    end

    def create
        @article = Article.new(article_params) # initialize model. Article Params? 

        @article.save # saves model to db. returns a boolean.
        redirect_to @article
    end

    private # defining the params is done in its own method so that other actions can use the same controller.
        def article_params
            params.require(:article).permit(:title, :text)
    end

end
