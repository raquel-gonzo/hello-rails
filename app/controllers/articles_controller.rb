class ArticlesController < ApplicationController

    def index # show all articles
        @articles = Article.all
    end

    def show # finds article by id
        @article = Article.find(params[:id])
    end

    def new # creating a new instance variable called '@article'
        @article = Article.new 
    end

    def create
        @article = Article.new(article_params) # initialize model. Article Params? 

        if @article.save    # returns boolean
            redirect_to @article
        else
            render 'new' # @article object is passed back to the 'new' template 
        end
    end

    private # defining the params is done in its own method so that other actions can use the same controller.
        def article_params
            params.require(:article).permit(:title, :text)
    end

end
