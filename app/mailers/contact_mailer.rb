class ContactMailer < ActionMailer::Base
    def post_enquiry (post_id,message)
        post = Post.find(post_id)
      
      
        if post.present?
            #send email
            @name = post.account.email
            @anuncio = post.title
            @message= message
            mail(to: post.account.email, subject: "Acerca del anuncio #{@anuncio} en Baratico")
            
        end
    end
  end
  