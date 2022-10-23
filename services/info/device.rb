module Services
module Info
    class Device
        def self.info
            {
                ip:   ip_info,
                os:   os_info,
                time: time,
                user: user
            }
        end

        private

        def self.ip_info
            require 'net/http'
            require 'uri'

            uri = URI.parse("http://ipinfo.io")
            response = Net::HTTP.get_response(uri)
            if response.respond_to?(:body)
                return response.body
            end
        end

        def self.os_info
            RUBY_PLATFORM
        end

        def self.time
            Time.now
        end

        def self.user
            ENV['USER'] || ENV['USERNAME'] 
        end
    end
end
end