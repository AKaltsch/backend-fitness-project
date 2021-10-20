class ExerciseSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :image_url, :exercise_type, :workout_id, :user_id
end
