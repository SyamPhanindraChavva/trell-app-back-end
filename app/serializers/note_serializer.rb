class NoteSerializer < ActiveModel::Serializer
  attributes :id, :title,:date,:description
end
