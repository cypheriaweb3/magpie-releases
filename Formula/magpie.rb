class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.553/magpie-cli-darwin-arm64"
      sha256 "a734c8d4b33c2e56ad95b47c0dfa586a07b4205b2d6b3ac5ccfc1a010f0faa1a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.553/magpie-cli-darwin-amd64"
      sha256 "d5ca98af63177ae7682001661e0bc6cd2103610c0231fe05a32ab6c26ed1629f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.553/magpie-cli-linux-arm64"
      sha256 "4b00db2927755bfe7e170e115cedbe994d580c02ccce7b15d3cf13788c7bec2c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.553/magpie-cli-linux-amd64"
      sha256 "7dd2fcfdb64c7bd0a3a37ba97e1fb01092858b0fa2fd1f1f2d47d92bc5cee5fb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
