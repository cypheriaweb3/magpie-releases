class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.495/magpie-cli-darwin-arm64"
      sha256 "c16ba0f244aa8212baddfb7cb36f2e0ef6bc5eca823b851dab6a1231463fb42a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.495/magpie-cli-darwin-amd64"
      sha256 "328d437f700741de86aa8a6e19c19aa71edee4f7b6922f91a10da9a482c55342"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.495/magpie-cli-linux-arm64"
      sha256 "af9bb2fecaeb2c9c77c6837beaf53a964ec267618f4451a37041c94df541b976"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.495/magpie-cli-linux-amd64"
      sha256 "6b0a01b71decfc163c52c4ca3c430083ba31d760882473969923148d40405d88"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
