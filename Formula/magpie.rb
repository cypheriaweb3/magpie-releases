class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.337/magpie-cli-darwin-arm64"
      sha256 "139d91c50ebd089005a301f3343c93e6155bb0a86e60ffca52cb8ec97af51e17"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.337/magpie-cli-darwin-amd64"
      sha256 "9e0c2bb6cdbdffaf098f4a25ae8dd08e737f54989e676419afb1489dc280d3b8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.337/magpie-cli-linux-arm64"
      sha256 "baeaee484fd4271d23112e49f51de9bae141e42dd5fcb56b7cc6d5a9e30b731f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.337/magpie-cli-linux-amd64"
      sha256 "235c0d16429ebab6599d7c639027ced506a62d856ea1c1736fa03cbf43e362ff"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
