class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.157/magpie-cli-darwin-arm64"
      sha256 "36c4d4f82e372a6a332c0fd4fb90ec7b418128df402c4366507887e2f239a31a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.157/magpie-cli-darwin-amd64"
      sha256 "3d449111a781d08db9dff7df2d748ef7f7e745c3d5fcc8834ad40eca2113b974"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.157/magpie-cli-linux-arm64"
      sha256 "1dbcf1f4113b9d714bb30e7c93ecac99f9182aabe9d99e815318e05d41459e20"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.157/magpie-cli-linux-amd64"
      sha256 "7f73fd1b7a4ef770471c6100d4e29a38d64f297ebd07af8e6eeed3736b388f11"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
