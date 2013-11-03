class Movie
  include Mongoid::Document
  field :title, type: String
  field :gross, type: Integer
end
