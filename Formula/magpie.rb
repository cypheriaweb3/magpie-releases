class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.371/magpie-cli-darwin-arm64"
      sha256 "9d156dd2b117474ded3ffbb401cdf599a5137375d5a33533c95bd55cffa74c21"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.371/magpie-cli-darwin-amd64"
      sha256 "e235b3a172d580ae02302649ca8ab47b1106dffef384177655f994585699598a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.371/magpie-cli-linux-arm64"
      sha256 "e1062140c07abb186d11b7d862a6ee0589a073f17eb06a2882111bdb77deb831"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.371/magpie-cli-linux-amd64"
      sha256 "9b902d54b5ae6d933717f9aaad757f850e2a9e87f320bd8d730d36c23bd93d55"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
