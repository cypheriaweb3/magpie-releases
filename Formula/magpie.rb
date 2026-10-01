class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.555/magpie-cli-darwin-arm64"
      sha256 "da88e63b4fc42891c5f1c82259f2ff7c1ba496d518c52dd9a5d19fe966711e1a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.555/magpie-cli-darwin-amd64"
      sha256 "b801ab36acb49cd6fa7a26439210b1e7d642ea334771cd36e93e8bd159677592"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.555/magpie-cli-linux-arm64"
      sha256 "6cb162e434978325b302ba236d366b07ac108b96523c2c307d5a8b5f377948c0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.555/magpie-cli-linux-amd64"
      sha256 "0934468d85c61001ff2d86ae0c7aa0d101751425cc4948696b2a263a5e0dfccc"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
