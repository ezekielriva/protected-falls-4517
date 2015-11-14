module Dashboard
  class AnsweredQuestionnairesController < ApplicationController
    before_action :set_questionnaire
    before_action :set_answered_questionnaire, only: [:show, :edit, :update, :destroy]

    def index
      @answered_questionnaires = AnsweredQuestionnaire.all
    end

    def show
    end

    def new
      @answered_questionnaire = @questionnaire.answered_questionnaires.new
      @questionnaire.questions.each do |question|
        @answered_questionnaire.answers.new(question: question)
      end
    end

    def edit
    end

    def create
      @answered_questionnaire = @questionnaire.answered_questionnaires.new(answered_questionnaire_params)

      respond_to do |format|
        if @answered_questionnaire.save
          format.html { redirect_to questionnaire_answered_path(@questionnaire, @answered_questionnaire),
                        notice: 'Answered questionnaire was successfully created.' }
          format.json { render :show, status: :created, location: @answered_questionnaire }
        else
          format.html { render :new }
          format.json { render json: @answered_questionnaire.errors, status: :unprocessable_entity }
        end
      end
    end

    def update
      respond_to do |format|
        if @answered_questionnaire.update(answered_questionnaire_params)
          format.html { redirect_to @answered_questionnaire, notice: 'Answered questionnaire was successfully updated.' }
          format.json { render :show, status: :ok, location: @answered_questionnaire }
        else
          format.html { render :edit }
          format.json { render json: @answered_questionnaire.errors, status: :unprocessable_entity }
        end
      end
    end

    def destroy
      @answered_questionnaire.destroy
      respond_to do |format|
        format.html { redirect_to answered_questionnaires_url, notice: 'Answered questionnaire was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

  private
    def set_questionnaire
      @questionnaire = Questionnaire.find(params[:questionnaire_id])
    end

    def set_answered_questionnaire
      @answered_questionnaire = @questionnaire.answered_questionnaires.find(params[:id])
    end

    def answered_questionnaire_params
      params.require(:answered_questionnaire).permit(:questioned, :profile,
        :conclusions, answers_attributes: [:value, :question_id])
    end
  end
end
