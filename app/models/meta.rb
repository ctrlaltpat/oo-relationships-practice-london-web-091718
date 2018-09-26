module DryMethods

  module InstanceMethods
    def test_all_the_instances
      "successful testing"
    end
  end

  module ClassMethods
    def test_all_the_classes
      "successful testing"
    end
  end

end

# require_relative '../meta.rb'
# extend DryMethods::ClassMethods
# include DryMethods::InstanceMethods
