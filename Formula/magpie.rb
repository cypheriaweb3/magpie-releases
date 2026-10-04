class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.848/magpie-cli-darwin-arm64"
      sha256 "fa7545febd512981409d5b9d3ac55d52e6461454068de13768a9f213a1b4d765"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.848/magpie-cli-darwin-amd64"
      sha256 "ca3f3cbfa6a4bbdef2200ae8668078c99d0e92f876b1cae408e855722e6a3078"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.848/magpie-cli-linux-arm64"
      sha256 "7a4ef6bd0a92cf08220bd5927688135e0ee1ab9513235d7d47312f4e924f2e1f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.848/magpie-cli-linux-amd64"
      sha256 "c2a5bc346ee5647509d7cafce10d8820076e6b7571d37c46cbf3434921f6f090"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
