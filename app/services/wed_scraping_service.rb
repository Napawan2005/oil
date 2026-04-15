# frozen_string_literal: true
require 'httparty'
require 'nokogiri'

module OilPrices
  class WedScrapingService<ApplicationService
    include HTTParty
    base_uri 'https://www.bangchak.co.th'

    def fetch_prices
      response = self.class.get("/th/oilprice/historical")

      if response.success?

        OpenStruct.new(success?: true, data: response.body)
      else
        OpenStruct.new(success?:false , error: "Error: #{response.code}")

      end
    end


  end

end
#keyword_init: true ไม่ได้แปลว่า "ต้องส่งค่าให้ครบทุกตัว" แต่หมายถึง "ตอนสร้างต้องระบุชื่อตัวแปร (Key)" แทนการส่งค่าตามลำดับครับ