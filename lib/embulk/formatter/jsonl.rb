require 'json'

module Embulk
  module Formatter

    class JsonlFormatterPlugin < FormatterPlugin
      Plugin.register_formatter("jsonl", self)

      def self.transaction(config, schema, &control)
        # configuration code:
        task = {
        }

        yield(task)
      end

      def init
        # initialization code:

        # your data
        @current_file == nil
        @current_file_size = 0
      end

      def close
      end

      def add(page)
        # output code:
        page.each do |record|
          if @current_file == nil || @current_file_size > 32*1024
            @current_file = file_output.next_file
            @current_file_size = 0
          end
          datum = {}
          @schema.each do |col|
            datum[col.name] = record[col.index]
          end
          @current_file.write "#{datum.to_json}\n"
        end
      end

      def finish
        file_output.finish
      end
    end

  end
end
