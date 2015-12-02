module Dashboard
  class QuestionnairesController < DashboardController
    before_action :set_questionnaire, except: [:index, :new, :create]

    def index
      @questionnaires = Questionnaire.all
    end

    def new
      @questionnaire = current_user.questionnaires.new
      @questionnaire.questions.build
    end

    def create
      @questionnaire = current_user.questionnaires.new(questionnaire_params)
      if @questionnaire.save
        return redirect_to @questionnaire,
                           notice: "Se ha creado el Cuestionario exitosamente."
      end

      render :new
    end

    def show; end
    def edit; end

    def update
      if @questionnaire.update(questionnaire_params)
        return redirect_to [:dashboard, @questionnaire],
                           notice: "Se ha modificado el Cuestionario #{@questionnaire.name} exitosamente."
      end

      render :edit
    end

    def destroy
      @questionnaire.destroy
      redirect_to dashboard_questionnaires_path,
                  notice: "El Cuestionario #{@questionnaire.name} ha sido elimnado completamente incluyendo sus Preguntas"
    end

    protected

    def set_title
      @title = "Mis Cuestionarios"
    end

    private

    def questionnaire_params
      params.require(:questionnaire).permit(:name, :close_at,
        questions_attributes: [:id, :text, :_destroy])
    end

    def set_questionnaire
      @questionnaire = Questionnaire.includes(:questions).find(params[:id])
      @title         = @questionnaire.decorate.title
    end
  end
end
