class Post < ApplicationRecord
    validates :titulo, :conteudo, presence: true
    validates_length_of :titulo, maximum: 100
    #validates_format_of :poster, with: /\w+\. (jpg|png)\z/i, message:"utilizar somente arquivos JPEG ou PNG."
    has_attached_file :image, styles: {large: "600x600>", medium: "300x300>", thumb: "150x150#" }
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

    #associano com a tabela pos
    has_many :comentarios, dependent: :destroy

end
