class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.847/magpie-cli-darwin-arm64"
      sha256 "272f056d0fef43418eaac3e5388fce5c6661440d887716f2a4634a3b5da5ced5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.847/magpie-cli-darwin-amd64"
      sha256 "ab7d82d114ae83d32b8e8198e2f20842e43e530a5013bc1157c19a1da46af461"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.847/magpie-cli-linux-arm64"
      sha256 "642e5116719bb1c44267737b2f02812a706ae64d825c4565e1bc6af5ddd8a172"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.847/magpie-cli-linux-amd64"
      sha256 "b5efe04d3b668a13ede0a7b4aebe0ed576c23e0d54eb9f442cfdf2198eecb674"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
