class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.224/magpie-cli-darwin-arm64"
      sha256 "a31a42b44f64218bdb590fc3d6f7dc782c022a89fece43563e4d53b7d7d11e10"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.224/magpie-cli-darwin-amd64"
      sha256 "cef7fe545239875657779749f12f86b9f04190e66ea9ca5bf1da0273c259055e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.224/magpie-cli-linux-arm64"
      sha256 "13fde6c6450d99f4cbfc8ddce4b4570a5e1dc0bc6d1421d18cb7743c168c8175"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.224/magpie-cli-linux-amd64"
      sha256 "74d2b6de011f4e1756d38f9a88fae992ba58e0d8d4e7a3552dd6e4dbb443c203"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
