json.extract! book, :id, :name, :price, :author, :category, :editor, :description, :created_at, :updated_at
json.url book_url(book, format: :json)
