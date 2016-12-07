class StaticController < ApplicationController
def home
  @posts = Post.all
  @page = (params[:page] || 1).to_i
offset = (@page -1) * 10
@posts = Post.
            order(created_at: :desc).
            offset(offset).
            limit(10).
            all
end

def about
end

end
