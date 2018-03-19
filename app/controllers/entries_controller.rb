class EntriesController < ApplicationController
    #before_action :logged_in?, only: [:create, :destroy]

    #def index
    #  @artists_user = Artist.where(user_id: current_user.id)
    #  @artists = Artist.where.not(user_id: current_user.id)
    #end
    before_action :authenticate_admin!, except: [:index, :show]

    def new
      @entry = Entry.new
    end

    def create
      @entry = Entry.new(entry_params)
      if @entry.save
        flash[:success] = "Noticia agregada!"
        redirect_to entries_url
      end
    end

    def index
      @entries = Entry.all.sort_by{|e| e[:created_at]}.reverse
    end

    def update
      @entry = Entry.find(params[:id])
      if @entry.update_attributes(entry_params)
        flash[:success] = "Noticia actualizada"
        redirect_to entries_url
      else
        flash[:error] = "No ha sido posible actualizar la noticia"
        redirect_to entries_url
      end
    end


    def edit
      @entry = Entry.find(params[:id])
      render 'edit'
    end

    def show
      @entry = Entry.find(params[:id])
      @comments = @entry.comments
      @comment = Comment.new
    end

    def destroy
      @entry = Entry.find(params[:id]).destroy
      if @entry.destroy
        flash[:success] = "Noticia eliminada"
        redirect_to entries_url
      else
        flash[:error] = "No se pudo eliminar la noticia"
        redirect_to entries_url
      end
    end

    private
      def entry_params
        params.require(:entry).permit(:headline, :dropline, :body)
    end
end
