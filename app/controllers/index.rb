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



