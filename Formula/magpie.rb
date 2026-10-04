class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.859/magpie-cli-darwin-arm64"
      sha256 "583c418b260ecd1afc03fa07fc8c31daf1dc2b5f67cef35a35636b9fc54fa15e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.859/magpie-cli-darwin-amd64"
      sha256 "c671bda76f37599cda6bb38a659c128ae48dc7d81ee54034dd5e1ec01d941306"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.859/magpie-cli-linux-arm64"
      sha256 "59cb5da98ae05d0caab6542105e5cf7bbc23ac8d7066ecadb7e2996a04656f0c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.859/magpie-cli-linux-amd64"
      sha256 "46163b23b56d379452e0e211777a58afc50df6f4b4b05af2a31889b2a8e77c14"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
