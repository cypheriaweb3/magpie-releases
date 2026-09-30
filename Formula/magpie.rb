class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.529/magpie-cli-darwin-arm64"
      sha256 "69c12d478d156c7b506730d81f1eb870c99706c5f93ad65326378910aef6423f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.529/magpie-cli-darwin-amd64"
      sha256 "8bea1490f6ea10b52e5f8fb58d7e037a8f181aedba5ce60a80abc0446f632404"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.529/magpie-cli-linux-arm64"
      sha256 "6d15055514119a5b3a8bb1120a28dfb01c2dbd85e01e93cfe035d7c7f2638f05"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.529/magpie-cli-linux-amd64"
      sha256 "d29375eabc6c275b0659ab4ccd508f22e44b39d6eb70dcf9568839cdb4ef66ee"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
