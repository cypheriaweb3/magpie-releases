class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.673/magpie-cli-darwin-arm64"
      sha256 "43ffd864b4a844a5f7fa916484e7ee500b6f09bddbd2dabfb5d621f850974a60"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.673/magpie-cli-darwin-amd64"
      sha256 "349164fbb9b5cba1eda28f35d0387173e0df4deb78be7801c176d6a1e0652c3a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.673/magpie-cli-linux-arm64"
      sha256 "7016d8b74455c3e1340a8ef9184164dd175f72b0feab6248ebf92495949d2677"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.673/magpie-cli-linux-amd64"
      sha256 "54e49a2e79da0e6b6ce42f8564e5da6bd318aa8a8d80363fb90c1f5c81440be5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
