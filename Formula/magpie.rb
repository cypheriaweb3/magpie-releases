class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.630/magpie-cli-darwin-arm64"
      sha256 "f41766429f17e2655b8a67b76dfa4db25fa8ad4b6934d0155ee51c7587fe279d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.630/magpie-cli-darwin-amd64"
      sha256 "83ac8610dc05325b6267f49a515e096f917bb188043191da075cfeed4c75d4b6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.630/magpie-cli-linux-arm64"
      sha256 "0d85262969b3562b1702a81c0642d7f86fdf1573bddae217de035d791a37ddc1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.630/magpie-cli-linux-amd64"
      sha256 "19fc8bf840bc34fc3a12f1f54c026f74b81d0fac77accf8729bbdc2da24dfdbd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
