module Dashboard
  module Users
    class QuestionnairesController < DashboardController
      before_action :set_user
      before_action :set_title

      def index
        @questionnaires = @user.questionnaires
      end

      private

      def set_user
        @user = User.find(params[:user_id])
      end

      def set_title
        @title = "Cuestionarios de #{@user.decorate}"
      end
    end
  end
end
