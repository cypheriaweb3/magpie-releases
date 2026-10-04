class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.831/magpie-cli-darwin-arm64"
      sha256 "ce9e31ccd7c31b7e2ac10c392d059260fe535c99f2feee74fdfe1e5694222085"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.831/magpie-cli-darwin-amd64"
      sha256 "a57ad9d278e52480339e05ed7e14fda678a935277cebc2df41348059e3f5bf99"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.831/magpie-cli-linux-arm64"
      sha256 "4fe347e893e05775dfc5057eddf707c69a7ac719e99147cd1680cd79bfd8c6f3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.831/magpie-cli-linux-amd64"
      sha256 "82815c392ba0a4a03ffb0f9b212f0b3f919522150758ad2926ad58dfd3feebc1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
