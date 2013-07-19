require "pay_dirt"
require "konamio"
require "foaas"
require "konami/version"

module Konami
  class Fo < PayDirt::Base
    def initialize(options)
      options = {
        konamio: Konamio::Sequence::Requisition,
        konamio_params: {
          prompt: "Enter the Konami code!",
          confirmation: false
        },
        foaas:   Foaas::FO,
        foaas_params: {
          name: "You",
          from: "Me",
        }
      }.merge(options)

      load_options(options)
    end

    def execute!
      @konamio.new(@konamio_params).execute! {
        @response = @foaas.new(@foaas_params).execute!
        puts "#{@response.data["message"]} #{@response.data["subtitle"]}"
      }
      return result(true, @response)
    end
  end
end
