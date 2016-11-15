class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    contact = Contact.new(
    name: params[:name],
    age: params[:age],
    gender: params[:gender],
    diary: params[:diary]
    )
    contact.save
    render "create.html.erb"
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
    @contact = Contact.find_by(id: contact_id)
    @contact.name = params[:name]
    @contact.age = params[:age]
    @contact.gender = params[:gender]
    @contact.diary = params[:diary]
    contact.save
    render "update.html.erb"
  end

  def destroy
    contact_id = params[:id]
    @contact = Contact.find_by(id: contact_id)
    render "destroy.html.erb"
  end
end