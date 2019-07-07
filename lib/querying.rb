def select_books_titles_and_years_in_first_series_order_by_year
  "
  SELECT Books.title,Books.year
  FROM Books
  LIMIT 3
  "
end

def select_name_and_motto_of_char_with_longest_motto
  "
  SELECT Characters.name,Characters.motto
  FROM Characters
  GROUP BY motto
  ORDER BY COUNT(*)
  DESC
  LIMIT 1
  "
end


def select_value_and_count_of_most_prolific_species
  "
  SELECT Characters.species,COUNT(species)
  FROM Characters
  GROUP BY species
  ORDER BY COUNT(*)
  DESC
  LIMIT 1
  "
end

def select_name_and_series_subgenres_of_authors
  "
  SELECT Authors.name,Subgenres.name
  FROM Authors
  JOIN Subgenres
  ON Authors.id = Subgenres.id
  "
end

def select_series_title_with_most_human_characters
  "
  SELECT Series.title
  FROM Series
  JOIN Characters
  ON Series.id = Characters.author_id
  WHERE species = 'human'
  GROUP BY title
  ORDER BY COUNT(*)
  DESC
  LIMIT 1
  "
end

def select_character_names_and_number_of_books_they_are_in
  "
  SELECT Characters.name,COUNT(*)
  FROM Characters
  JOIN Character_books
  ON Characters.id = Character_books.character_id
  GROUP BY name
  ORDER BY COUNT(*)
  DESC
  "
end
