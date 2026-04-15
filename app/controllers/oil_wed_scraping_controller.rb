# frozen_string_literal: true

class OilWedScrapingController
  def index
    #view
    service = WedScrapingService.new
    @raw_html = service.fetch_prices


    if @raw_html.start_with?("Error:")
      @error_message = @raw_html
      flash.now[:error] = "ไม่สามารถดีงข้อมูลราคาน้ำมันได้"
    else
      flash.now[:notice] = "ดึงข้อมูลสำเร็จ"
    end
  end

  def fetch_prices
    result = WedScrapingService.new

    if result.success?
      render json: { message: "ดึงข้อมูลสำเร็จ" }
    else
      render json: { error: "Error: #{result.response.code}" }
    end
  end
end