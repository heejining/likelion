class UserMailer < ApplicationMailer
    default from: 'notifications@example.com'
 
    # def welcome_email(user)
    #     @user = user
    #     @url  = 'http://example.com/login'
    #     mail(to: @user.email, subject: 'Welcome to My Awesome Site')
    # end
    
    def contact_email(contact_email, contact_message)
        @contact_email = contact_email
        @contact_message = contact_message
        mail(to: @contact_email, subject: 'Confirm Email from my website')
        mail(to: 'wngmls95@gmail.com' 'heejin5513@gmail.com', subject: 'Contact from my website')
    end
end 
