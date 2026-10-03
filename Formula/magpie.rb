class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.711/magpie-cli-darwin-arm64"
      sha256 "ed5e217978550fea5806550d3bec550908d27325c3860e24faa3954a171698d2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.711/magpie-cli-darwin-amd64"
      sha256 "80baa00fd35f63ee2a7752370203b346fca8e771a025e4bde98a7d19a5ee3e3a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.711/magpie-cli-linux-arm64"
      sha256 "d5bb83502998f55850570d0595d386b06da28928986593a9680fa50de6c4df9f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.711/magpie-cli-linux-amd64"
      sha256 "f810d7de06d96e6532dcb314fe847bc50530a3d2a395798959cb0f56611f6171"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
