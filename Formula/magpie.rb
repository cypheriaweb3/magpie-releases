class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.783/magpie-cli-darwin-arm64"
      sha256 "05f7ed875b399e26e1582bdc9c8e6f73007237ff14eccd7ab0a2cf3929cb4c90"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.783/magpie-cli-darwin-amd64"
      sha256 "7b0698b1750dbd8dd595c1e9bb78e9691ef668345d8050ff9fa8471ebbefb7f5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.783/magpie-cli-linux-arm64"
      sha256 "6cb917252d2aefa569386f7e234e176346807ee997e34af04ff8954b411a4c19"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.783/magpie-cli-linux-amd64"
      sha256 "a98f2e91bfcff340a8055ce8354ee434ddb75c3fae78a1ae7a62ddf22f90b3cd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
