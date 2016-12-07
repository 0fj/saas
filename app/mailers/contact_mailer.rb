class ContactMailer < ActionMailer::Base
    default to: 'spirit@spiritpact.pw'
    
    def contact_email(name, email, text)
        @name = name
        @email = email
        @text = text
        
        mail(from: email, subject: 'You\'ve got mail!')
    end
end