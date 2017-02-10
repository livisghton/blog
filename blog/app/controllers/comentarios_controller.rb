class ComentariosController < ApplicationController
    before_action :set_post


    def index
        @comentarios = @post.comentarios
    end

    def new
        @comentario = @post.comentarios.new
    end

    def create
        @comentario = @post.comentarios.new(comment_params)

        if @comentario.save
            redirect_to post_comentarios_path(@post), notice: 'Comentário gravado com Sucesso!'
        else
            render :new
        end
    end

    private

        def comment_params
            params.require( :comentario).permit( :nome, :comentario, :avaliacao)
        end

        def set_post
            @post = Post.find(params[ :post_id])
        end
end
