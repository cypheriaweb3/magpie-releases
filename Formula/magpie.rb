class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.868/magpie-cli-darwin-arm64"
      sha256 "ea9a0b634d0a4c71b39f0c0dec55190584ebfb919bf1a12d861423c92ec1a556"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.868/magpie-cli-darwin-amd64"
      sha256 "643f56f55644a757f789c13923b1bd1a94ea217444e1b16938e0a712ba732f13"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.868/magpie-cli-linux-arm64"
      sha256 "20a630cf37f752a361c76aea28b21634a7cdf7d2eb75c7355016bb464dd0faf8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.868/magpie-cli-linux-amd64"
      sha256 "02496c32dd3e7f63c7eff70e4fb4a472781651e61e6fba651a8f2e859cdd09ba"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
