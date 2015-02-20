json.array!(@cards) do |card|
  json.extract! card, :id, :to, :subject
  json.url card_url(card, format: :json)
end
