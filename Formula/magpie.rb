class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.513/magpie-cli-darwin-arm64"
      sha256 "78fdafc5102b76b92af03b8111fdfdbab14f2350a571327a1f8cf4e9a9a45ecf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.513/magpie-cli-darwin-amd64"
      sha256 "0caf874a8ff76a3e5776c8227dd5aafa0eb1b70ddf94f7adbad4140cca6379d9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.513/magpie-cli-linux-arm64"
      sha256 "f2cb03b71d9592183739838230277fa64acd3d5f47f2d36f255c9a008e5c2645"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.513/magpie-cli-linux-amd64"
      sha256 "df88a9896002b4985d2f4f9c5bac6be530f92666690554605f3aad0be63d02c8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
