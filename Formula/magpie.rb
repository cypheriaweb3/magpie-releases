class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.407/magpie-cli-darwin-arm64"
      sha256 "24d7b399d76a0f48110947efff7f0be7e58f556799251267ae540a2f103833c9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.407/magpie-cli-darwin-amd64"
      sha256 "3c79b9b2c22e500aaf0d0d7155b6492580535e8c49e64f0095af471341af9b7e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.407/magpie-cli-linux-arm64"
      sha256 "d75cb5ce7a3fb3f9df111c14e703f04fa35e4b9cf1aedf13d58a662ec08278b7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.407/magpie-cli-linux-amd64"
      sha256 "1d61e278dfc2dabe5794a48880378428bca146a7d03aed0def1f4c754fcac191"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
