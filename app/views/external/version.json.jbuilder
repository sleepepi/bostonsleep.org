# frozen_string_literal: true

json.version do
  json.string BostonSleep::VERSION::STRING
  json.major BostonSleep::VERSION::MAJOR
  json.minor BostonSleep::VERSION::MINOR
  json.tiny BostonSleep::VERSION::TINY
  json.build BostonSleep::VERSION::BUILD
end
