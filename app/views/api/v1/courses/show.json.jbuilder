json.extract! @course, :id, :name, :description
json.teacher do
  json.extract! @course.user, :id, :full_name, :email
end
json.students @course.users do |student|
  json.extract! student, :id, :full_name, :email
end
