get '/author/:name' do
  # Look in app/views/index.erb
  @posts = Post.where(name: params[:name])
  @author_name = params[:name]
  erb :'author/post_by_author'
end
