module Services
    module Info
    class Git
        def self.info(push_params)
            {
                git_push_params: push_params,
                git_branch: git_branch,
                git_branches: git_branches,
                git_last_commits: git_last_commits,
                git_user: git_user
            }
        end

        private

        def self.git_user
            {
                email: `git config user.email`,
                name: `git config user.name`
            }
        end

        def self.git_branch
            `git rev-parse --abbrev-ref HEAD`
        end

        def self.git_branches
            `git branch`
        end

        def self.git_last_commits(n=10)
            `git log -#{n} --pretty=%B`
        end
    end
end
end