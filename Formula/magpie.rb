class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.638/magpie-cli-darwin-arm64"
      sha256 "8c2f9d1f1f8a6067ef93f9bea4b8cfb6f367b201c6388cb6b3a5c4c8fd56ef78"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.638/magpie-cli-darwin-amd64"
      sha256 "835afbe7b59829ae469652bda1cbd954fc7f98ffea0c572b9e9891a4257cda89"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.638/magpie-cli-linux-arm64"
      sha256 "302d5197993122012d6059d47a85bb7f993bc51ee366bfd80be16e4c1cf82b1c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.638/magpie-cli-linux-amd64"
      sha256 "9ebe2de4bc0d460d58098c9e7c6ae73d55a46d37bc6479c9ae0cbdcd1ccd587f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
