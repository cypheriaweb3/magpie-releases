class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.882/magpie-cli-darwin-arm64"
      sha256 "0d3b273b3303227a36d93c1fbda39c6546aec88f904316316247154066058855"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.882/magpie-cli-darwin-amd64"
      sha256 "43e99d45667e043ecef15fe6bfe6e9fa94227529c8125c20a49617a8b4ef9ef8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.882/magpie-cli-linux-arm64"
      sha256 "3fafa906115f835e73088b5e3fc8a043620d29fb9e9d9811a04e6b99a1771c32"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.882/magpie-cli-linux-amd64"
      sha256 "56e58a736912c34ff3664e8dca3d3dd2927f34908e7619e69b0f8665240e9a2f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
