require 'formula'

REPOSITORY_URL='https://github.com/girigiribauer/go-pwgen'
HOMEBREW_VERSION='0.1.0'

class GoPwgen < Formula
  desc 'cli password generator by Golang'
  homepage REPOSITORY_URL
  url "#{REPOSITORY_URL}/releases/download/v#{HOMEBREW_VERSION}/pw-darwin-amd64.tar.gz", :tag => "v#{HOMEBREW_VERSION}"
  sha256 'a0398dee7391940fedc0e0c614c4ffc70ac1656705bcd73c1fe8e52efa8fa33c'
  head REPOSITORY_URL, :branch => 'master'
  version HOMEBREW_VERSION

  def install
    bin.install 'pw'
  end
end
