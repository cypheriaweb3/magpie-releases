class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.206/magpie-cli-darwin-arm64"
      sha256 "0613634e5cadc4cf843f56c8886643225422297d943c963c355664b476c700f4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.206/magpie-cli-darwin-amd64"
      sha256 "812776de4242faf308c536785318fab845725098783692373bfc342c0c2d2885"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.206/magpie-cli-linux-arm64"
      sha256 "cebe77a815b919dbbcf08dbe51ae7aa157c6089beec1a31158368b63cb7df9d5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.206/magpie-cli-linux-amd64"
      sha256 "69302c7fffa028d66a76d6556c338f61fc01ad4c3bff0704d55db6b18c707ef6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
