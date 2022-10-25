# git_push

Protects code from being push to unexpected git repos.

git_push prevents code from leaking:

- [Toyota dev left key to customer info on public GitHub page for five years](https://www.theregister.com/2022/10/11/toyota_source_code_email_leak/)
- [GitHub’s source code was leaked on GitHub last night… sort of](https://arstechnica.com/information-technology/2020/11/githubs-source-code-was-leaked-on-github-last-night-sort-of/)
- [Nissan source code leaked online after Git repo misconfiguration](https://www.zdnet.com/article/nissan-source-code-leaked-online-after-git-repo-misconfiguration/)


## Quick start

Add gem to your Gemfile

```
gem "git_push"
```

Update the .git_config_config (see [example](.git_config_config.example))

```
allowed_origin: https://gitlab.com/KevinColemanInc/test-ruby-git.git
delete_code: true
```

## Example repo

https://github.com/KevinColemanInc/test-ruby-git

```
$ git clone https://github.com/KevinColemanInc/test-ruby-git
$ bundle install
$ touch b.md
$ git -am commit "test"
$ git push origin main
$ ls
```

After this is run, b/c the host does not match the allowed domain, the code is instantly deleted.

## FAQ

### My code isn't in ruby, does this support other languages?

Not yet. Leave an Issue for the langauge you want to support. I have plans to add `javascript`, `python`,

### Can I use this for iOS apps?

Yes, sorta. This will work for iOS apps that use the ruby toolchain (like [fastlane](https://fastlane.tools/) or [cocoapods](https://cocoapods.org/))

### Can I use this for Android apps?

Yes, sorta. This will work for Android apps that use the ruby toolchain (like [fastlane](https://fastlane.tools/))