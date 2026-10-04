class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.804/magpie-cli-darwin-arm64"
      sha256 "a707104d3e58da69d3543fc6463212b6292164b01a7e63f612004170503a1f8e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.804/magpie-cli-darwin-amd64"
      sha256 "deb1cf007511dc2a07205a9cacb6009aed141c6c32b82d2c8aad06d3c74f62a9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.804/magpie-cli-linux-arm64"
      sha256 "0690f72713086f91ae070b137d251d0a9872b0d73bda5fcb612b434fa37d121a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.804/magpie-cli-linux-amd64"
      sha256 "75a9fc52933ade95fc3105ce12eb85c1d52036c501aff12cc0ca8890af8b43eb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
