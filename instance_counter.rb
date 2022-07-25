# frozen_string_literal: true

#  kkkkk
module InstanceCounter
  def self.included(base)
    base.extend ClassMethods
    base.send :include, InstanceMethods
  end

  # hhh
  module ClassMethods
    attr_accessor :counter

    def instances
      puts "Counted instances: #{counter}"
    end
  end

  # ff
  module InstanceMethods
    def register_instance
      self.class.counter ||= 0
      self.class.counter += 1
      puts "instances: #{self.class.counter}"
    end
  end
end
