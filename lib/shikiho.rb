require "shikiho/version"
require "json"
require "nokogiri"
require "selenium-webdriver"
require "net/http"

module Shikiho
  class Error < StandardError; end

  def self.get_stock_price_now code: 4755
    i = 0
    driver = self.get_selenium_driver mode: :chrome
    driver.get("https://shikiho.jp/stocks/#{code.to_s}")
    sleep 3
    begin
      price = driver.find_element(:css, "div.current").text.to_s
    rescue
      puts "Retry... wait 2 sec.."
      sleep 2
      i += 1
      raise StandardError, "Something wrong! Make sure your code exists" if i > 5
      retry
    end
    driver.quit
    { code: code, price: price, datetime: Time.now.utc }
  rescue StandardError => e
    raise StandardError, e
  end

  def self.get_selenium_driver mode: :chrome
    case mode
    when :firefox_remote_capabilities
      firefox_capabilities = Selenium::WebDriver::Remote::Capabilities.firefox
      Selenium::WebDriver.for(:remote, url: "http://hub:4444/wd/hub", desired_capabilities: firefox_capabilities)
    when :firefox
      Selenium::WebDriver.for :firefox
    else
      options = Selenium::WebDriver::Chrome::Options.new
      options.add_argument("--headless")
      options.add_argument("--ignore-certificate-errors")
      options.add_argument("--disable-popup-blocking")
      options.add_argument("--disable-translate")
      Selenium::WebDriver.for :chrome, options: options
    end
  end
end
