require 'administrate/field/base'
require 'rails'

module Administrate
  module Field
    class Telephone < Administrate::Field::Base
      def to_s
        data.to_s.humanize unless data.nil?
      end

      class Engine < ::Rails::Engine
      end
    end
  end
end
