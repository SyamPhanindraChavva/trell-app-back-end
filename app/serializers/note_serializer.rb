class NoteSerializer < ActiveModel::Serializer
  attributes :id, :title,:date,:description,:status
end
