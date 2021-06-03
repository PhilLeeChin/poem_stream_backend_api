class PoemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :lines, :genre, :genre_id
end
