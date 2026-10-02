class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.684/magpie-cli-darwin-arm64"
      sha256 "8bd1d0180a7be6fd7002b69606b826cd6a916d643e4dbe2425276bea4d307855"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.684/magpie-cli-darwin-amd64"
      sha256 "a48e35a854000597d3da2fa37ee0760ecef24bda2933e33a0aba5f7003722779"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.684/magpie-cli-linux-arm64"
      sha256 "77422a14a581d1f635203f03d4a410089af914e4f7d0585a5282313b76a11048"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.684/magpie-cli-linux-amd64"
      sha256 "0327b0c8d4fb1e24fa95e5a8bec0763a370e1fc127428b2ababdfa77c1aa133c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
