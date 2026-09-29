class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.433/magpie-cli-darwin-arm64"
      sha256 "22c4d91a2c6c3e6ced13bb609f75ed8efc5ccdeabe115fcd87a787b858f915ff"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.433/magpie-cli-darwin-amd64"
      sha256 "0f484ee491ed5aa202c23f3847976ea9d743f0a436c6d5dab5c0c5da45b2938e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.433/magpie-cli-linux-arm64"
      sha256 "8fded7347ae8f04ee0372fd3ff1ef4bb286489a5ccb18ee6b80b83f2ac32a4ed"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.433/magpie-cli-linux-amd64"
      sha256 "de0a3b5d32465f0a02cb8fdea3e42fbc2fd917a250e9a3c51de8f11d31a548ab"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
