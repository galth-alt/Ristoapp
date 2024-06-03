json.extract! ricettum, :id, :nome, :descrizione, :rails, :generate, :model, :IngredienteRicetta, :ricetta_id, :ingrediente_id, :quantita, :created_at, :updated_at
json.url ricettum_url(ricettum, format: :json)
