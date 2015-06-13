json.array!(@signers) do |signer|
  json.extract! signer, :id, :mobile, :name, :town, :signed
  json.url signer_url(signer, format: :json)
end
