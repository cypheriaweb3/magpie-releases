class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.340/magpie-cli-darwin-arm64"
      sha256 "eb631d063193225b1274fe4358079871307bca0562fcbadce68be0fdd13e3fd8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.340/magpie-cli-darwin-amd64"
      sha256 "89fe3e7ff63939495c01b747357d66361c424753f05f082af299981da70ee6c4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.340/magpie-cli-linux-arm64"
      sha256 "95b3819fba6530fc88103c7c4b89e909a2b57c7bb3df15bb7e1f11b42fe405db"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.340/magpie-cli-linux-amd64"
      sha256 "dfa42d7e84b24d90e0c167287e6f94ac8af23ba59d9c2e26e4d23aee4afe88a4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
