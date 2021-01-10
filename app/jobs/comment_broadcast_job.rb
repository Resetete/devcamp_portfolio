class CommentBroadcastJob < ApplicationJob
    queue_as :default # all comments are stored in a list and worked as they come in

    def perform(comment)
      ActionCable.server.broadcast "blogs_#{comment.blog.id}_channel", comment: render_comment(comment)
      # we create a channel of a certain blog that is streaming the comments to this blog article
      #  we also want to render / show the comment on the page --> using the render_comment method
    end

    private

    def render_comment(comment) # here we render the comments
      CommentsController.render partial: 'comments/comment', locals: { comment: comment }
    end
end
