class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.562/magpie-cli-darwin-arm64"
      sha256 "bb7f8afcd6169844aaca15ecbcd32ed54aedc8c3dfea94caee137e5a4ad83cb6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.562/magpie-cli-darwin-amd64"
      sha256 "e2857e14a939707c884325b4272c27240093753c1bea10fe4f8df6a2cadde5ad"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.562/magpie-cli-linux-arm64"
      sha256 "5fdabd60d8d5406878126b2d3d95dcb89ea94d7de9debe3b37dea0c66a5b3c2c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.562/magpie-cli-linux-amd64"
      sha256 "f5621776555993ef60157af11204983bd067fc8e80dd588c49ccb48a4522c497"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
