def reformat_languages(languages)
  new_hash = {}
  languages.each do |category, language_type|
    language_type.each do |language, data|
      data.each do |key, value|
        if new_hash.key?(language) == true
          new_hash[language][:style] << category
        else
          new_hash[language] = {key => value, :style => [category]}
        end
      end
    end
  end
  new_hash
end
