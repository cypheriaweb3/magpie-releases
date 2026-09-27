class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.156/magpie-cli-darwin-arm64"
      sha256 "5e3c25cd6b5aee05c29aea3c30f3fa5ac1056cd0825a80b659757eaca1084a38"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.156/magpie-cli-darwin-amd64"
      sha256 "5bf60ce4f3dbf23a0fe18a742b0bcf7184399b4d5cfc43d698a7a78c3043a53a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.156/magpie-cli-linux-arm64"
      sha256 "58f3fb86ba9896b324ead168766e54ba1a5e89d58051150882320b3aacb8776c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.156/magpie-cli-linux-amd64"
      sha256 "d7b1fc56894347a464539ca05ba8a42e96c5fc4639fa82005a4509c6e95bde4d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
