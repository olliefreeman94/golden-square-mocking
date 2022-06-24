require 'date'
require 'json'
require 'net/http'

class TimeError
  # Returns difference in seconds between server time
  # and the time on this computer
  def initialize(requester = Net::HTTP)
    @requester = requester
  end
  
  def error(current_time = Time.now)
    # return get_server_time
    # return Time.now
    return get_server_time - current_time
  end

  private

  def get_server_time
    text_response = @requester.get(URI("https://worldtimeapi.org/api/ip"))
    json = JSON.parse(text_response)
    return DateTime.parse(json["utc_datetime"]).to_time
  end
end

# time_checker = TimeError.new
# puts time_checker.error