class Contact < ApplicationRecord
  belongs_to :user
  def friendly_created_at
    created_at.strftime("%b %d, %Y")
  end

  def full_name
    first_name + ", Esq."
  end

  def jp_country_code
    "+81 #{phone}"
  end
end