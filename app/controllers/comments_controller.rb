class CommentsController < ApplicationController
    def create
        @article = Article.find(params[:article_id])
        @comment = @article.comments.create(comment_params) # links comment to belong to specific article.
        redirect_to article_path(@article) # redirects user back to original article. calls the 'show' action of the ArticlesController --> renders show.html.erb template.
    end

    def destroy # finds article you're looking at, locates the comment within the article.comments collection, removes it from db and sends us back to the article. 
        @article = Article.find(params[:article_id])
        @comment = @article.comments.find(params[ :id ])
        @comment.destroy
        redirect_to article_path(@article)
    end 

    private
        def comment_params
            params.require(:comment).permit(:commenter, :body)
        end
end
