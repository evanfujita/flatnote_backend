class TaskSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :completed
end
