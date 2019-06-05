require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative('./models/student')
also_reload('./models/*')

#NEW
get '/students/new' do
  erb(:new)
end

#CREATE
post '/students' do
  @student = Student.new(params)
  @student.save
  erb(:create)
end

#INDEX
get '/students' do
  @students = Student.all()
  erb(:index)
end

#SHOW
get '/students/:id' do
  @student = Student.find(params[:id].to_i) #params hash understands both symbols and strings, so could put "id" instead of :id
  erb(:show)
end

#EDIT
get '/students/:id/edit' do
  @student = Student.find(params[:id].to_i)
  erb(:edit)
end

#UPDATE
post '/students/:id' do
  @student = Student.new(params)
  @student.update()
  erb(:update)
end

#DELETE
post '/students/:id/delete' do
  @student = Student.find(params[:id].to_i)
  @student.delete()
  #REDIRECT
  redirect '/students'
end
