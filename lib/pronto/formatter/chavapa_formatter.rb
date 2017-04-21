module Pronto
  module Formatter
    class ChavapaFormatter < CommitFormatter
      def client_module
        Github
      end

      def pretty_name
        'GitHub'
      end

      def line_number(message, _)
        message.line.commit_line.position if message.line
      end
    end
  end
end
