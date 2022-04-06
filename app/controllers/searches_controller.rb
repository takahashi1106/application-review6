class SearchesController < ApplicationController
  before_action :authenticate_user!

  def search
    @model = params[:model]
    @content = params[:content]
    @method = params[:method]

    if @model== 'User'
      @users = User.search_for(@content,@method)
    else
      @books = Book.search_for(@content,@method)
    end
  end


end