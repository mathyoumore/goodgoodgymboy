json.extract! personal_record, :id, :user_id, :exercise_id, :sets, :repititions, :one_rep_max, :created_at, :updated_at
json.url personal_record_url(personal_record, format: :json)
