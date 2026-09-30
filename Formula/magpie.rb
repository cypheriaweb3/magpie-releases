class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.530/magpie-cli-darwin-arm64"
      sha256 "81e879b069be9b016b6ed9497ebfa3b2aab789e06871d84468e1d7dc7058e024"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.530/magpie-cli-darwin-amd64"
      sha256 "7581167ecab6f60c7e78f2d84a970cfb1d6071e36cc6e7bbf9228e6074e430df"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.530/magpie-cli-linux-arm64"
      sha256 "a1b8399bcb0ef597318d96c5544d845799cc3f0ded96e7604d13cb6d0b7c64f5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.530/magpie-cli-linux-amd64"
      sha256 "558c31d6213742f9baf36289f3f08565fdc9389ee4d8daa40bb293e7233989c5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
