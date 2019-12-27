class Post < ApplicationRecord
    belongs_to :category
    belongs_to :account
    has_rich_text :content
end
