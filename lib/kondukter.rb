require "kondukter/version"
require "nokogiri"

module Kondukter

  class Passenger

    def initialize(passenger_data = nil)
      @output = fetch_status(passenger_data)
    end

    def top_level_queue
      @output.xpath('//get_wait_list_size').children[0].to_s.to_i
    end

    private

    def fetch_status(passenger_data)
      if passenger_data == nil
        Nokogiri::XML.parse `passenger-status --show=xml`
      else
        Nokogiri::XML.parse passenger_data
      end
    end

  end

end
