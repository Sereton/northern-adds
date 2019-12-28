class ContactMailer < ActionMailer::Base
    def post_enquiry (post_id,reply_to_email,message)
        post = Post.find(post_id)
      
      
        if post.present?
            #send email
            @name = post.account.email
            @anuncio = post.title
            @message= message
            @reply_to_email = reply_to_email
            mail(to: post.account.email, subject: "Acerca del anuncio #{@anuncio} en Baratico")
            
        end
    end
  end
  