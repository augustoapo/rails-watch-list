class BookmarksController < ApplicationController
      before_action :set_list, except: [:destroy]
                
      def new
        @bookmark = Bookmark.new
      end
    
      def create
        # Cria um novo restaurante
        @bookmark = Bookmark.new(bookmark_params)
        @bookmark.list = @list
        @bookmark.save
        redirect_to list_path(@list)
      end
    
      def destroy
        @bookmark = Bookmark.find(params[:id])
        @bookmark.destroy
        redirect_to lists_path
      end
    
      private
    
      def set_list
        @list = List.find(params[:list_id])
      end
    
      def bookmark_params
        params.require(:bookmark).permit(:comment, :movie_id)
      end
  end
