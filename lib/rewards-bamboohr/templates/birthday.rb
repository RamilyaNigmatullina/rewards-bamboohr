module RewardsBamboohr
  module Templates
    class Birthday < Base
      DEFAULT_TEMPLATE = "+100 Happy Birthday @%{username}".freeze

      def generate
        template % { username: username }
      end

      private

      def template
        ENV.fetch("REWARDS_BIRTHDAY_TEMPLATE", DEFAULT_TEMPLATE)
      end
    end
  end
end
