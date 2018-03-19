class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    puts 'ACA'
    puts comment_params[:entry_id]
    puts 'ACA'
    @entry = Entry.find_by_id(params[:entry_id])
    new_hash = {}
    new_hash[:name] = params[:comment][:name]
    new_hash[:content] = params[:comment][:content]
    @entry = @entry.comments.new(new_hash)
    if @entry.save
      redirect_to entry_url(id: params[:entry_id]), notice: 'El comentario ha sido posteado exitosamente!'
    else
      redirect_to entry_url
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:name, :content, :entry_id)
  end
end
