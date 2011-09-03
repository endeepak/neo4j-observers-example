class BlogObserver < Neo4j::Rails::Observer
  Neo4j::Rails::Callbacks::CALLBACKS.each do |callback|
    define_method(callback) do |record, &block|
      Audit.create!(:event => callback.to_s,
                    :entity => "<Blog id=#{record.id.inspect}>",
                    :diff => record.changes.inspect)
      block.call if block
    end
  end
end