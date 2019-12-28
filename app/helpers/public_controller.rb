class PublicController < ApplicationController
    def home    
        @categories = Category.where(parent_id: nil)
    end

    def faqs
    end

    def scams
    end

    def safety
    end

    def terms
    end

    def send_enquiry_to_user
        @post = Post.find(params[:post_id])
        

        if @post.present?
            logger.debug "Message has been sent"
            ContactMailer.post_enquiry(@post.id,params[:email],params[:message]).deliver_now
            redirect_to @post, notice: 'Message was successfully sent.'
        end

        
    end
end
