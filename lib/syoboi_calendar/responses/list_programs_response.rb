module SyoboiCalendar
  module Responses
    class ListProgramsResponse < BaseResponse
      private

      # @note Override
      def resource_class
        ::SyoboiCalendar::Resources::ProgramResource
      end

      # @note Override
      def response_key
        "ProgLookupResponse"
      end

      # @note Override
      def source_or_sources
        body[response_key]["ProgItems"]["ProgItem"]
      end
    end
  end
end
