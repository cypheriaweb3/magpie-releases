class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.473/magpie-cli-darwin-arm64"
      sha256 "a5ac1f2b2f213abd5d1d6cb73b90f1e127cc4f1a56ac030f4ccf45d92a10d545"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.473/magpie-cli-darwin-amd64"
      sha256 "682a4931801c174a065cdb8f0ae1d2266be177496641f46ae40024bc65441a3f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.473/magpie-cli-linux-arm64"
      sha256 "a5aa76df984b05eec5574d7c395ca513ecaf3108b3a05215539edff452784137"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.473/magpie-cli-linux-amd64"
      sha256 "100c3c30537bc21b5f663d1ac981a4b30282fa47b8c397b512b47833ddf24470"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
