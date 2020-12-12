class ContactsController < ApplicationController
  skip_before_action :authenticate_user!

  def create
    @contact = Contact.new(params_contact)
    @contact.user = current_user

    if @contact.save
      form_html = render_to_string partial: 'shared/contact-form', locals: {contact: Contact.new()}

    else
      form_html = render_to_string partial: 'shared/contact-form', locals: {contact: @contact}

    end
    render json: { success: @contact.save , content: form_html}
  end


  def params_contact
    params.require(:contact).permit(:name, :email, :number, :message, :flat_id)
  end
end
