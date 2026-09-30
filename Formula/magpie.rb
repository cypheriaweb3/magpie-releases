class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.450/magpie-cli-darwin-arm64"
      sha256 "4800365ffb1df4061e726474db51ce43eafc94df4c925fd294a4ceda1a6dde0f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.450/magpie-cli-darwin-amd64"
      sha256 "1b75f96a542cc14eeb2072fe54edc5becb3b8cdab93c3ad5741bc263fbdcbf45"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.450/magpie-cli-linux-arm64"
      sha256 "ca96ce472b1e8742dc3f7db4c30330ad38eba177c6ad59422b5f6e139fa42750"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.450/magpie-cli-linux-amd64"
      sha256 "6c7cd8e36cb69f3729ac12c12c49e538b238e826495d4b0920432a423fb4ac79"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
