class ContactsController < ApplicationController
     def new
         @contact = Contact.new
     end
     
     def create
        @contact = Contact.new(contact_params)
        if @contact.save
            redirect_to new_contact_path, notice: "Message delivered."
        else
            redirect_to new_contact_path, notice: "Message failed to deliver."
        end
     end
     
     private
        def contact_params
          params.require(:contact).permit(:name, :email, :concerns)
        end
end