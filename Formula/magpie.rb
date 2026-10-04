class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.821/magpie-cli-darwin-arm64"
      sha256 "55a70a318daeb379aaae167fcb3fe51f5f4916108eb77c2ea60e910358ed9e20"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.821/magpie-cli-darwin-amd64"
      sha256 "2283722158173dc66a5b8639c5f0b00f851ad9a95fba6c3509652be32bbcb8cc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.821/magpie-cli-linux-arm64"
      sha256 "091a2ec5fdc7128872b49436330cc30662c294098696fbf9158a9e8d7d4435c2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.821/magpie-cli-linux-amd64"
      sha256 "fd3b5f8bea8d35a0b96b2c88406376db1379f4d63f338bdc9f493837d487f069"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
