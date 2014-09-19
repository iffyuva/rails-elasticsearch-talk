class User < ActiveRecord::Base
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  def self.autocomplete(query_phrase)
    query = {
      prefix: { name: query_phrase }
    }

    search(query: query).records
  end

  def self.search_exact(q)
    query = {
      match: { name: q }
    }

    search(query: query).records
  end

  def as_indexed_json(options = {})
    status = last_login_at > 10.days.ago ? 'active' : 'stale'
    { name: name, status: status }
  end
end
