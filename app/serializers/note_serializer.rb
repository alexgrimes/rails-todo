class NoteSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :user_id, :completed
  
end
