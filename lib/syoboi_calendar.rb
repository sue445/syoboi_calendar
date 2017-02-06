require "active_support/concern"
require "active_support/core_ext/array/wrap"
require "active_support/core_ext/object/try"
require "faraday"
require "faraday_middleware"

require "syoboi_calendar/client"
require "syoboi_calendar/queries/base_query"
require "syoboi_calendar/queries/channel_group_query"
require "syoboi_calendar/queries/channel_query"
require "syoboi_calendar/queries/program_query"
require "syoboi_calendar/queries/title_query"
require "syoboi_calendar/resources/base_resource"
require "syoboi_calendar/resources/channel_group_resource"
require "syoboi_calendar/resources/channel_resource"
require "syoboi_calendar/resources/program_resource"
require "syoboi_calendar/resources/title_resource"
require "syoboi_calendar/responses/base_response"
require "syoboi_calendar/responses/channel_groups_response"
require "syoboi_calendar/responses/channels_response"
require "syoboi_calendar/responses/programs_response"
require "syoboi_calendar/responses/titles_response"
