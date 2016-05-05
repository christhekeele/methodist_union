File.open(Rails.root.join('db', 'data', 'deaths.csv')) do |file|
  data = file.read
  lines = data.split("\n")
  commas_outside_of_quotes = /,(?=(?:[^"]|"[^"]*")*$)/
  lines.each do |line|
    _, _, date, address, description = line.split(commas_outside_of_quotes)
    Death.create!(date: date, address: address.to_s.gsub('"', ''), description: description.to_s.gsub('"', ''))
  end
end

Death.first.destroy