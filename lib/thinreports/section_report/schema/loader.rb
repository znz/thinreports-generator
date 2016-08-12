require_relative 'parser'

module Thinreports
  module SectionReport
    module Schema
      class Loader
        def initialize(report_params)
          @layout_file = report_params[:layout_file]
          @layout_data = report_params[:layout_data]
        end

        def load
          Schema::Parser.new(schema_json_data).parse
        end

        private

        attr_reader :layout_file, :layout_data

        def schema_json_data
          layout_file ? File.read(layout_file, encoding: 'UTF-8') : layout_data
        end
      end
    end
  end
end
