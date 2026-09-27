class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.170/magpie-cli-darwin-arm64"
      sha256 "f4c724d3fcecb8a168451d7317d456406a4b3803aff5366039a7120babdd9f21"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.170/magpie-cli-darwin-amd64"
      sha256 "d71073d3a5fc67158fe5dfc57cd494cb5be2794d22f9eb775acee541f59fbe37"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.170/magpie-cli-linux-arm64"
      sha256 "f137a905fbc540664f8feed1e180e8e01c61831629a4cbe9b46d6116e9310db9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.170/magpie-cli-linux-amd64"
      sha256 "e589e11e2fb937a5f7b775115cb44e42e9b8a8114659e2aaf8ff9a75f19b95ca"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
