class Blog < ApplicationRecord
  belongs_to :author

  def self.search(search)
    if search
      joins(:author).where('Lower(title) LIKE Lower(:search) OR Lower(preview_text) LIKE Lower(:search) 
        OR Lower(body) LIKE Lower(:search) OR Lower(authors.first_name) LIKE Lower(:search) OR 
        Lower(authors.last_name) LIKE Lower(:search) OR Lower(authors.full_name) LIKE Lower(:search)', search: "%#{search}%")
    else
      find(:all)
    end
  end
end

