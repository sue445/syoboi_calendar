module SyoboiCalendar
  module Queries
    class ListTitlesQuery < BaseQuery
      COMMAND = "TitleLookup"

      property :Fields
      property :TID

      # @note Override
      def Command
        COMMAND
      end

      # @return [String, nil]
      def Fields
        if options[:fields]
          format_comma_separated_values(options[:fields])
        end
      end

      # @return [String]
      def TID
        if options[:title_id]
          format_comma_separated_values(options[:title_id])
        else
          "*"
        end
      end
    end
  end
end
