module Sequel
  class Dataset
    module IdPagination
      def limit_by_id(count, options)
        dataset = self
        since_id = options[:since_id]
        max_id = options[:max_id]

        if since_id
          dataset = dataset.where{ id > since_id }
        end

        if max_id
          dataset = dataset.where{ id <= max_id }
        end

        dataset.limit(count)
      end
    end
  end
  Dataset.register_extension(:id_pagination, Dataset::IdPagination)
end
