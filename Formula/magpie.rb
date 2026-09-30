class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.478/magpie-cli-darwin-arm64"
      sha256 "576f416924bf49dbccef387d3ee0d060dffab910e7f0321e3dfebfcaddfbe9d6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.478/magpie-cli-darwin-amd64"
      sha256 "0d1294c6988a8486e294f0c50b3307222838b3623029368c69f739c8cddd29a2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.478/magpie-cli-linux-arm64"
      sha256 "f3d27079b8cbc06f6b92224e57c424099158d7cff39ea7af81853521d1a91a4f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.478/magpie-cli-linux-amd64"
      sha256 "d14e7f1a6be75c26a39887fc76b6b6c50c5c72ee6109503905aaa99a769d7892"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
