class QuestionnaireDecorator < Draper::Decorator
  delegate_all

  decorates_association :user

  def to_s
    name.titleize
  end

  def title
    "Cuestionario #{to_s}"
  end

  def created_at
    object.created_at.strftime("%d.%m.%Y")
  end

  def close_at
    object.close_at.present? ? object.close_at.strftime("%d.%m.%Y") : "-"
  end
end
