module Sequel
  class Dataset
    module IdPagination
      def limit_by_id(count, since_id, max_id)
        dataset = self

        if since_id
          dataset = dataset.where { id > since_id }
        end

        if max_id
          dataset = dataset.where { id <= max_id }
        end

        if count
          dataset = dataset.limit(count)
        end
      end
    end
  end
  Dataset.register_extension(:id_pagination, Dataset::IdPagination)
end
