class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.353/magpie-cli-darwin-arm64"
      sha256 "fd9d993000950154bd6dc2ee96b5943469ea51ee65d6b98619e61797ebf346db"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.353/magpie-cli-darwin-amd64"
      sha256 "af9c5d5ffa930978fb5e7f36f7a5641f137476c2a9450bb24078080a04612843"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.353/magpie-cli-linux-arm64"
      sha256 "0062544b6f148f4919892bd7a6dcce4ad9bba9284635dc353137bf36331584a3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.353/magpie-cli-linux-amd64"
      sha256 "ca72d54c6a179a6a39196a7cc0ae4eb0d0028b5f86349b80bbbb74d8f5cd1f85"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
