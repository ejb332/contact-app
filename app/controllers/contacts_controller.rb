class ContactsController < ApplicationController
  def index
    if current_user
      @contacts = current_user.contacts
    else
      @contacts = "/login"
    end
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    contact = Contact.new(
    first_name: params[:first_name],
    middle_name: params[:middle_name],
    last_name: params[:last_name],
    age: params[:age],
    gender: params[:gender],
    diary: params[:diary],
    user_id: current_user.id
    )
    contact.save
    redirect_to "/contacts"
  end

  def show
    contact_id = params[:id]
    @contact = Contact.find_by(id: contact_id)
    render "show.html.erb"
  end

  def edit
    contact_id = params[:id]
    @contact = Contact.find_by(id: contact_id)
    render "edit.html.erb"
  end

  def update
    contact_id = params[:id]
    contact = Contact.find_by(id: contact_id)
    contact.first_name = params[:first_name]
    contact.middle_name = params[:middle_name]
    contact.last_name = params[:last_name]
    contact.age = params[:age]
    contact.gender = params[:gender]
    contact.diary = params[:diary]
    contact.save
    redirect_to "/contact/#{contact.id}"
  end

  def destroy
    contact_id = params[:id]
    @contact = Contact.find_by(id: contact_id)
    render "destroy.html.erb"
  end

  def all_johns
    render "all_johns.html.erb"
  end
end