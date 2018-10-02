require 'pry'
def reformat_languages(languages)
	new_hash = {}
	languages.each do |structure, c_languages|
		c_languages.each do |language, type|
			type.each do |x, y|
				#binding.pry
				if !new_hash[language]
					new_hash[language] = {}
				end
				new_hash[language][:style] ||= []
				new_hash[language][:style] << structure
				if !new_hash[language][:type]
					new_hash[language][:type] = y
				end
			end
		end
	end
	new_hash
end
