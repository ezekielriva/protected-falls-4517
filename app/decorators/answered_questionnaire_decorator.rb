class AnsweredQuestionnaireDecorator < Draper::Decorator
  delegate_all

  decorates_association :questionnaire

  def to_s
    "Respuesta para #{questionnaire}"
  end

  def title
    questionnaire.title
  end
end
