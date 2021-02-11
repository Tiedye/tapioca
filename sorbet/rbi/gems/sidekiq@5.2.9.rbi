# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `sidekiq` gem.
# Please instead update this file by running `tapioca generate sidekiq`.

# typed: true

module Sidekiq
  class << self
    def average_scheduled_poll_interval=(interval); end
    def client_middleware; end
    def configure_client; end
    def configure_server; end
    def death_handlers; end
    def default_retries_exhausted=(prok); end
    def default_server_middleware; end
    def default_worker_options; end
    def default_worker_options=(hash); end
    def dump_json(object); end
    def error_handlers; end
    def load_json(string); end
    def logger; end
    def logger=(log); end
    def on(event, &block); end
    def options; end
    def options=(opts); end
    def redis; end
    def redis=(hash); end
    def redis_info; end
    def redis_pool; end
    def server?; end
    def server_middleware; end
  end
end

class Sidekiq::Client
  def initialize(redis_pool = T.unsafe(nil)); end

  def middleware(&block); end
  def push(item); end
  def push_bulk(items); end
  def redis_pool; end
  def redis_pool=(_arg0); end

  private

  def atomic_push(conn, payloads); end
  def normalize_item(item); end
  def normalized_hash(item_class); end
  def process_single(worker_class, item); end
  def raw_push(payloads); end

  class << self
    def enqueue(klass, *args); end
    def enqueue_in(interval, klass, *args); end
    def enqueue_to(queue, klass, *args); end
    def enqueue_to_in(queue, interval, klass, *args); end
    def push(item); end
    def push_bulk(items); end
    def via(pool); end
  end
end

Sidekiq::DEFAULTS = T.let(T.unsafe(nil), Hash)

Sidekiq::DEFAULT_WORKER_OPTIONS = T.let(T.unsafe(nil), Hash)

module Sidekiq::Extensions
  class << self
    def enable_delay!; end
  end
end

module Sidekiq::Extensions::PsychAutoload
  def resolve_class(klass_name); end
end

Sidekiq::FAKE_INFO = T.let(T.unsafe(nil), Hash)

Sidekiq::LICENSE = T.let(T.unsafe(nil), String)

module Sidekiq::Logging
  def logger; end

  class << self
    def initialize_logger(log_target = T.unsafe(nil)); end
    def job_hash_context(job_hash); end
    def logger; end
    def logger=(log); end
    def reopen_logs; end
    def tid; end
    def with_context(msg); end
    def with_job_hash_context(job_hash, &block); end
  end
end

class Sidekiq::Logging::Pretty < ::Logger::Formatter
  def call(severity, time, program_name, message); end
  def context; end
end

Sidekiq::Logging::Pretty::SPACE = T.let(T.unsafe(nil), String)

class Sidekiq::Logging::WithoutTimestamp < ::Sidekiq::Logging::Pretty
  def call(severity, time, program_name, message); end
end

module Sidekiq::Middleware
end

class Sidekiq::Middleware::Chain
  include(::Enumerable)

  def initialize; end

  def add(klass, *args); end
  def clear; end
  def each(&block); end
  def entries; end
  def exists?(klass); end
  def insert_after(oldklass, newklass, *args); end
  def insert_before(oldklass, newklass, *args); end
  def invoke(*args); end
  def prepend(klass, *args); end
  def remove(klass); end
  def retrieve; end

  private

  def initialize_copy(copy); end
end

class Sidekiq::Middleware::Entry
  def initialize(klass, *args); end

  def klass; end
  def make_new; end
end

Sidekiq::NAME = T.let(T.unsafe(nil), String)

class Sidekiq::Rails < ::Rails::Engine
end

class Sidekiq::Rails::Reloader
  def initialize(app = T.unsafe(nil)); end

  def call; end
  def inspect; end
end

class Sidekiq::RedisConnection
  class << self
    def create(options = T.unsafe(nil)); end

    private

    def build_client(options); end
    def client_opts(options); end
    def determine_redis_provider; end
    def log_info(options); end
    def verify_sizing(size, concurrency); end
  end
end

class Sidekiq::Shutdown < ::Interrupt
end

Sidekiq::VERSION = T.let(T.unsafe(nil), String)

module Sidekiq::Worker
  mixes_in_class_methods(::Sidekiq::Worker::ClassMethods)

  def jid; end
  def jid=(_arg0); end
  def logger; end

  class << self
    def included(base); end
  end
end

module Sidekiq::Worker::ClassMethods
  def client_push(item); end
  def delay(*args); end
  def delay_for(*args); end
  def delay_until(*args); end
  def get_sidekiq_options; end
  def perform_async(*args); end
  def perform_at(interval, *args); end
  def perform_in(interval, *args); end
  def set(options); end
  def sidekiq_class_attribute(*attrs); end
  def sidekiq_options(opts = T.unsafe(nil)); end
  def sidekiq_retries_exhausted(&block); end
  def sidekiq_retry_in(&block); end
end

Sidekiq::Worker::ClassMethods::ACCESSOR_MUTEX = T.let(T.unsafe(nil), Thread::Mutex)

class Sidekiq::Worker::Setter
  def initialize(klass, opts); end

  def perform_async(*args); end
  def perform_at(interval, *args); end
  def perform_in(interval, *args); end
  def set(options); end
end