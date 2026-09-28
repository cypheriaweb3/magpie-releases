class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.339/magpie-cli-darwin-arm64"
      sha256 "297019330adb22feecc7d5886e03b0f308c34637cc9ec8eccefedd1394bd2315"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.339/magpie-cli-darwin-amd64"
      sha256 "309d33ad8689a89f7fb1b71f1dc0abb6e37df3dae762b1a953635aca0d94d64d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.339/magpie-cli-linux-arm64"
      sha256 "e1ee4b77d5482f8e3e8c60db7a8067c78b05285992d6ca2ae4c6b911c738be9c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.339/magpie-cli-linux-amd64"
      sha256 "d309bafc9d555d1dd436faad156d2bd1201a8b3b012992da29f2fe9fa92404f2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
