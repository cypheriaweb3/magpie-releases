class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.830/magpie-cli-darwin-arm64"
      sha256 "3568c3121e981e8cd770a36cfe78a9d4fa57dc8594b2e4012fa16c2bef2478ac"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.830/magpie-cli-darwin-amd64"
      sha256 "bc727a7bc917698799067e25b7d88d215404655afef958227939a483f94622a8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.830/magpie-cli-linux-arm64"
      sha256 "3d418a1f0f62b978f0ba292f95b4e8add882158fdf4a431655958bf1117a39a1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.830/magpie-cli-linux-amd64"
      sha256 "f84044e9655a25f7d0da0ba4817a02dbec566fa67909b7334f092c007d64a512"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
