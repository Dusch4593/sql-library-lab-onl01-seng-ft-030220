def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT title, year
   FROM books
   WHERE series_id = 1;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto
   FROM characters
   WHERE length(characters.motto) = (SELECT MAX(length(characters .motto)) FROM characters);"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, (COUNT(species)) AS species_count
   FROM characters
   GROUP BY species
   ORDER BY species_count DESC 
   LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name 
   FROM authors
   INNER JOIN subgenres
   ON authors.id = subgenres.id"
end

def select_series_title_with_most_human_characters
  "SELECT series.title
   FROM series
   JOIN characters 
   ON characters.author_id = series.author_id AND characters .species = 'human'
   LIMIT 1"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, (COUNT(character_books.id)) AS book_count
   FROM characters
   INNER JOIN character_books
   WHERE characters.id = character_books.character_id
   GROUP BY characters.name
   ORDER BY book_count DESC;"
end
