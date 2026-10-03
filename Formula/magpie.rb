class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.705/magpie-cli-darwin-arm64"
      sha256 "2efafebbaef38de9802c148f76c96502e37364f20df8201c676b039cf279e3ec"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.705/magpie-cli-darwin-amd64"
      sha256 "61ada38cea41f2cd7d25a377647308d0650d2cde2e9c5daec83e879698f0dd62"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.705/magpie-cli-linux-arm64"
      sha256 "a314c7626b82b50aa8f403596b5789ff77a94618d87853dfb0b99c46b3dcb553"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.705/magpie-cli-linux-amd64"
      sha256 "a4b624980b234537ea5a6f056f204fc6f0f724f48005085526fba2fe03087926"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
