class Api::V1::QuestionsController < ApplicationController
    def index
        questions = Question.all
        render json: QuestionSerializer.new(questions)
    end

    def create
        @question = Question.new(question_params)
        return render json: { errors: @question.errors.full_messages }, status: :unprocessable_entity unless @question.save
        render json: @question, status: :accepted
    end

    private
    
    def question_params
        params.require(:question).permit(:sentence, :category, :user_id)
    end
end
