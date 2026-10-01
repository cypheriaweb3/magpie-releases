class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.584/magpie-cli-darwin-arm64"
      sha256 "550e1ab4bf2089182b2273d2aa17982b2c98e26d5369b6d88c8cfc2dfa4816ae"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.584/magpie-cli-darwin-amd64"
      sha256 "e748190b2ec990502f0d617fe4bc16fcaf760dd6f18328af9af8990a7aca48c8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.584/magpie-cli-linux-arm64"
      sha256 "5903c9853dd70ccb6c859ab78244f83fdc20c5a7edcf5db12633f9026e4fa498"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.584/magpie-cli-linux-amd64"
      sha256 "6c4d8d596b728b934a99658ddfbf8c97b54abb81800eee6b1371f7de55075b3e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
