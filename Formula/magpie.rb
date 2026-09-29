class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.428/magpie-cli-darwin-arm64"
      sha256 "2d976c77500bf0216cde514643e97b2b942409de1763ccbe350dbc7e2376ef84"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.428/magpie-cli-darwin-amd64"
      sha256 "db760386639ea318b6f793d06d42b6fde6bd43cbf89ac873a3334b73ee99542e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.428/magpie-cli-linux-arm64"
      sha256 "05b7975826e6d05c2ce226d2db53185da4820b0053e08263cb1bea3849321943"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.428/magpie-cli-linux-amd64"
      sha256 "9d72f0c82f7676d60b7c7e47abce6a0b093e1ec783075c78c5fbdc406e099287"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
