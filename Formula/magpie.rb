class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.842/magpie-cli-darwin-arm64"
      sha256 "0b9405863e857594a403d7e533615c8e012bcf882930e29ca89c8512bf2dcfc3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.842/magpie-cli-darwin-amd64"
      sha256 "899855e7c4aa38e0788f2eb6200f17725a288e468905b1398a51155e398fe3dc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.842/magpie-cli-linux-arm64"
      sha256 "6536bbde9342505ffabb4fb973c7bd97601cb9331c1703383610b20c3d299dc9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.842/magpie-cli-linux-amd64"
      sha256 "774759e4d1ec356c2735aa0294f9a2f2e3850c42f6257469d0381fc817e8f96b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
