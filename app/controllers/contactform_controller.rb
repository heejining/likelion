class ContactformController < ApplicationController
    def send_contact_emails
        contact_email = params[:contact_email]
        contact_message = params[:contact_message]
        UserMailer.contact_email(contact_email, contact_message).deliver_later
        
        redirect_to products_path
    end
end
