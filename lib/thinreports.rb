# coding: utf-8

module Thinreports
  ROOT = File.expand_path File.join(File.dirname(__FILE__), '..')

  def self.generate(report_params, filename: nil)
    Generate.new(filename).call(report_params)
  end
end

require 'thinreports/version'
require 'thinreports/config'
require 'thinreports/core/utils'
require 'thinreports/core/errors'
require 'thinreports/core/format/base'
require 'thinreports/core/shape'
require 'thinreports/core/utils'
require 'thinreports/report'
require 'thinreports/layout'
require 'thinreports/generator'
require 'thinreports/generate'

# Alias for Thinreports
ThinReports = Thinreports
