class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.643/magpie-cli-darwin-arm64"
      sha256 "46a8ded8a8ce1c6c3bee5fc7bcc7c4eae193541b8a7f005761b58eb2c5033888"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.643/magpie-cli-darwin-amd64"
      sha256 "0a6cd36ce807db60b705187a413bbb71b1980aaf86f9555db9dd8d5e6e783fcb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.643/magpie-cli-linux-arm64"
      sha256 "372079c570653423c206273d6cd6b7c1a34e52c654ea85c2058a464c656508ac"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.643/magpie-cli-linux-amd64"
      sha256 "d22ac19e161543ae6bf3e9e7c36e5cf0194d018430dc6a7058384a5ee6246132"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
