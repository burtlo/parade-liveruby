require "parade-liveruby/version"

module Parade
  module Liveruby
    extend self

    module Server
      def self.included(server)
        server.get '/eval_ruby' do
          eval_ruby(params[:code])
        end
      end

      def eval_ruby(code)
        eval(code).to_s
      rescue => exception
        exception.message
      end
    end

    def javascript_file
      File.expand_path(File.join(File.dirname(__FILE__),"parade-liveruby","parade-liveruby.js"))
    end

  end

  Server.register Liveruby::Server

  Server.register_javascript Liveruby.javascript_file

end