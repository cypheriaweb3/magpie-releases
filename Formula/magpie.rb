class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.456/magpie-cli-darwin-arm64"
      sha256 "f791e1658922d745d9371d17b0f444babb751e9a07b74ae3195431953d36a03b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.456/magpie-cli-darwin-amd64"
      sha256 "8a0458693b34dc3a82bc9aac8d8fc0066b1db9c3996977be65bd7a464ec41304"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.456/magpie-cli-linux-arm64"
      sha256 "546735a6cddd9f2f8f6c0cc01d988b04dd3fd69c74cdf9d5bcc244faf2e7e455"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.456/magpie-cli-linux-amd64"
      sha256 "8e642fe5f769906f68d6650611620f028b5192c7f8321513c1632f13eeb836fe"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
