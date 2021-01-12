import consumer from "./consumer"

const App = {
  global_chat: undefined
}

jQuery(document).on('turbolinks:load', function() {
  const comments = $('#comments');
  if (comments.length > 0) {
    App.global_chat = consumer.subscriptions.create({ channel: "BlogsChannel",
                                                      blog_id: comments.data('blog-id')
                                                    },
    {
    connected() {
      console.log('Your connected to blogs Channel');
    },
    disconnected() {},
    received(data) {
      comments.append(data['comment']);
    },
    send_comment(comment, blog_id) {
      console.log('Blog_id:')
      console.log(blog_id);
      this.perform('send_comment', {comment, blog_id});
   }
  });
 };


  $('#new_comment').submit(function(e) {
    let $this = $(this);
    let textarea = $this.find('#comment_content');
    if ($.trim(textarea.val()).length > 1) {
      App.global_chat.send_comment(textarea.val(),
      comments.data('blog-id'));
      textarea.val('');
    };
    e.preventDefault();
    return false;
  });
});
