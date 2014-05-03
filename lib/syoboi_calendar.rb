require "active_support/concern"
require "active_support/core_ext/array/wrap"
require "active_support/core_ext/class/attribute"
require "active_support/core_ext/object/try"
require "active_support/core_ext/string/inflections"
require "faraday"
require "faraday_middleware"

require "syoboi_calendar/client"
require "syoboi_calendar/connector"
require "syoboi_calendar/parsers/base"
require "syoboi_calendar/parsers/channel"
require "syoboi_calendar/parsers/program"
require "syoboi_calendar/parsers/title"
require "syoboi_calendar/query_builders/base"
require "syoboi_calendar/query_builders/channel_id_queriable"
require "syoboi_calendar/query_builders/channel"
require "syoboi_calendar/query_builders/program"
require "syoboi_calendar/query_builders/title"
require "syoboi_calendar/resources/base"
require "syoboi_calendar/resources/channel"
require "syoboi_calendar/resources/program"
require "syoboi_calendar/resources/title"
