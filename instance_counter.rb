# frozen_string_literal: true

#  kkkkk
module InstanceCounter
  def self.included(base)
    base.extend ClassMethods
    base.send :include, InstanceMethods
  end

  # ff
  module InstanceMethods
    protected

    @@counter = 0

    def register_instance
      @@counter += 1
      # puts "Counted: #{@@counter}"
    end
  end

  # hhh
  module ClassMethods
    include InstanceMethods
    def instances
      puts "Counted instances: #{@@counter}"
    end
  end
end
