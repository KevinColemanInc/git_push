module Services
    module Info
    class Environment
        def self.info
            {
                env: env,
            }
        end

        private

        def self.env
            ENV.to_h
        end
    end
end
end