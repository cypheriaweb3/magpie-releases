class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.392/magpie-cli-darwin-arm64"
      sha256 "1a349e8b511c4fa5550ffbc6649a5d6466da32075b2d6ab30c8b2d898d6538f6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.392/magpie-cli-darwin-amd64"
      sha256 "7b2a35314865d9888b92b7fa25471dd70ff28e8fd80b28f34b08c91e25f9c02e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.392/magpie-cli-linux-arm64"
      sha256 "10d1c3fef10cf68385917eebc40c73664568c0030d7569bd7f60084c47a51ac7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.392/magpie-cli-linux-amd64"
      sha256 "61252dff5cf874d145de0e41f22988b9784411c41df7f127ddf9296df4112651"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
