class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.442/magpie-cli-darwin-arm64"
      sha256 "992f689a0b0d97cd8c5e3e6a664cf564a71bc7f3d777a50a7044463426a907c8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.442/magpie-cli-darwin-amd64"
      sha256 "96f7e81d0ce737813aeaad50f66bb55152d9c8fbc9a20e5258541cc2ccc8a2f5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.442/magpie-cli-linux-arm64"
      sha256 "c542de5eb75b9583fcb25133088825d29141fa697b411770f09f2ab5d95a75aa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.442/magpie-cli-linux-amd64"
      sha256 "12144add3dedc4fa61d3a6a98a9539fd77d935ab1effadaf5d1f2d2dbd4ead9d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
