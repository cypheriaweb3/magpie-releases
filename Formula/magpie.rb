class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.295/magpie-cli-darwin-arm64"
      sha256 "313842ff4ac4c6124ea7dbbcc306938749ea85258c0158923a88b2cab18c4f34"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.295/magpie-cli-darwin-amd64"
      sha256 "f3a0c27e98dd4706c5ecc61d9cc3c812f1c728f2390d1b2025fc1130b660175b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.295/magpie-cli-linux-arm64"
      sha256 "eac99c77e3b6cd106731ceb0d6fc070fc375b53c96077acb12cf814a8eb4428d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.295/magpie-cli-linux-amd64"
      sha256 "31c36574b73f9f35c22393a10ead162aefc5c791b6b0d9eba7247fbd7bab3ce2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
