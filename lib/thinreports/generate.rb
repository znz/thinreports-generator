require_relative 'section_report/builder'

module Thinreports
  class Generate
    def initialize(filename)
      @filename = filename
    end

    def call(report_params)
      SectionReport::Builder.new(report_params).build
      # Generator.new(filename).generate(report)
    end

    private

    attr_reader :filename
  end
end
