class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.520/magpie-cli-darwin-arm64"
      sha256 "7d76b55d9a4e6a3c939ab22407845eced6a0651c92bdfa9dcd89c5bf4e9b6859"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.520/magpie-cli-darwin-amd64"
      sha256 "d6623a1fa55cbb5c536cc948245624d2bbc3870ef0f5f7e8588e2ed829aebbd8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.520/magpie-cli-linux-arm64"
      sha256 "f2fbbe70ccfd637098b6385d906ecd4ce446ec0307e18a90227cb46b71b0e868"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.520/magpie-cli-linux-amd64"
      sha256 "13f9d1a929c4c58fec7a8d89e6768c2e80359b6c98a2b360764c86e5a4bb3dd0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
