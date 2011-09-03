class Audit < Neo4j::Rails::Model
  property :event, :type => String
  property :entity, :type => String
  property :diff, :type => String
  property :created_at, :type => DateTime
  index :created_at
end
