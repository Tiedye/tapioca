# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `minitest-hooks` gem.
# Please instead update this file by running `bin/tapioca gem minitest-hooks`.

module Minitest::Hooks
  mixes_in_class_methods ::Minitest::Hooks::ClassMethods

  def after_all; end
  def around; end
  def around_all; end
  def before_all; end
  def time_it; end

  class << self
    def included(mod); end
  end
end

module Minitest::Hooks::ClassMethods
  def after(type = T.unsafe(nil), &block); end
  def around(type = T.unsafe(nil), &block); end
  def before(type = T.unsafe(nil), &block); end
  def new(name); end
  def with_info_handler(reporter, &block); end

  private

  def _record_minitest_hooks_error(reporter, instance); end
end

Minitest::Hooks::ClassMethods::NEW = T.let(T.unsafe(nil), Object)

class Minitest::HooksSpec < ::Minitest::Spec
  include ::Minitest::Hooks
  extend ::Minitest::Hooks::ClassMethods
end
