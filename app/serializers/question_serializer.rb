class QuestionSerializer
    include FastJsonapi::ObjectSerializer
    attributes :sentence, :category, :user_id, :user
end