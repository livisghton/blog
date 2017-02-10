class Comentario < ApplicationRecord
    validates :nome, :avaliacao, :comentario, presence: true
    validates_length_of :comentario, maximum: 200
    AVALIACAO=[0,1,2,3,4,5]
    validates_inclusion_of :avaliacao, in: AVALIACAO

    belongs_to :post
end