class User < ActiveRecord::Base
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  def self.autocomplete(query_phrase)
    query = {
      prefix: { name: query_phrase }
    }

    search(query: query).records
  end
end
