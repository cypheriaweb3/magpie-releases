class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.314/magpie-cli-darwin-arm64"
      sha256 "234d63035dc3511e66d42d816a244e7a70ad6c4738d7ab99b29e2c8e99bb5eeb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.314/magpie-cli-darwin-amd64"
      sha256 "cb19c974172f64c37afcde2e47d3d8f98f8d5070bd3758764c05ed7eee0416e7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.314/magpie-cli-linux-arm64"
      sha256 "0b2391df999f918109faacbdea5165960c5686bfc2e4a916ebda71c79f62c2f7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.314/magpie-cli-linux-amd64"
      sha256 "bca68be116a77fcb80e05d36537901e6f3a013b173e61d6e7ebcb0e2b89dec2d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
