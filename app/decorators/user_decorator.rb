class UserDecorator < Draper::Decorator
  delegate_all

  def to_s
    full_name.present? ? full_name.titleize : "Anon User"
  end

  def created_at
    object.created_at.strftime("%b. %Y")
  end
end
