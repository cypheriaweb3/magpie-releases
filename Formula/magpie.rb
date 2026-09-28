class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.240/magpie-cli-darwin-arm64"
      sha256 "603d79b6b83650af038f8ac0fd9dcf7af1f1d9119cc689eb382619a0465c53d4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.240/magpie-cli-darwin-amd64"
      sha256 "43c7eccfcb22adc7690a3bfd5e0f91f672c54b4c782b487e0f580f4ad4270b89"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.240/magpie-cli-linux-arm64"
      sha256 "4ef5fe99a11d268f9efc4005fa447099ff04b46f9463a292a1161f38d0bf2be6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.240/magpie-cli-linux-amd64"
      sha256 "02246648cce5c30a006e29a1cf56987530a291de7b0e69fcf5755eed1ab5e6ae"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
