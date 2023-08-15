Rails.application.routes.draw do
  # Display the form for a new ceramic piece
  get '/new', to: 'ceramic_pieces#new', as: 'new_ceramic_piece'

  # Process the form data and create a new ceramic piece
  post '/form', to: 'ceramic_pieces#create', as: 'form_ceramic_piece'

  # Show the calculated cost of a ceramic piece
  get '/show/:id', to: 'ceramic_pieces#show', as: 'ceramic_piece'

  # Root route
  root to: "ceramic_pieces#new"
end
