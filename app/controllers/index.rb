get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/notes' do
  # show all notes (read)
  @all_notes = Note.all
  erb :notes
end

get '/notes/new' do
  # send user to form for creating note`
  erb :create_note
end

post '/notes' do
  Note.create!(params)
  # create a new note from form
  redirect '/notes'
end

get '/notes/:id' do 
  puts params
  @note = Note.find(params[:id]) 
  erb :show_note
end

get '/notes/:id/edit' do
  puts params
  @note = Note.find(params[:id])
  erb :update_note
end

put '/notes/:id' do
  puts params
  @note = Note.find(params[:id])
  @note.update_attributes(params[:note])
  redirect '/notes'
end


