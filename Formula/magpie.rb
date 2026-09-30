class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.438/magpie-cli-darwin-arm64"
      sha256 "a0d1ccf75246ba676500111729f02cfbad6fd900d147a5a82dfb08bda8b5af4e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.438/magpie-cli-darwin-amd64"
      sha256 "85440dcddaa8a2d7e3688e882d5502ce74f6ccdd45d862cdaff4f7263f8ff16a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.438/magpie-cli-linux-arm64"
      sha256 "d1d3dd520ae1e2fccc7a348f4af37fb26c9adef1e62d5d63308a1f94dfb321b8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.438/magpie-cli-linux-amd64"
      sha256 "05e7a65d0031f09be3a2f01ad95c5ece445b6c37552d308f88b30bc689168a72"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
