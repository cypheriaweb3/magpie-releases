class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.862/magpie-cli-darwin-arm64"
      sha256 "cde919b22c8613b1537069173e60b7abc80909fc7d6c1f1d8aed1e577064e229"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.862/magpie-cli-darwin-amd64"
      sha256 "1d601f35f688282dd82482f7cf7267cf26a3ecd54911177f1ea8fee9427c7a55"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.862/magpie-cli-linux-arm64"
      sha256 "4ab3bd5ded51a4b2bebcbeea0c91607bbb8486a24dd11fd32eba7fcdcebf99a5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.862/magpie-cli-linux-amd64"
      sha256 "30148f4a36a8d7195ee991a130a8a1f0be3a0e61945e02092f7f2d417a547d94"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
