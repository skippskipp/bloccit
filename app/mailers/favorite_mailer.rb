class FavoriteMailer < ApplicationMailer
  default from: "scott.kipp@gmail.com"

  def new_comment(user, post, comment)
    headers["Message-ID"] = "<comments/#{comment.id}@safe-depths-99149.herokuapp>"
    headers["In-Reply-To"] = "<post/#{post.id}@safe-depths-99149.herokuapp>"
    headers["References"] = "<post/#{post.id}@safe-depths-99149.herokuapp>"

    @user = user
    @post = post
    @comment = comment

    mail(to: user.email, cc: "rajeev.singh@bloc.io", subject: "New comment on #{post.title}")
  end
end
