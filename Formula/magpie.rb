class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.865/magpie-cli-darwin-arm64"
      sha256 "20cfc1140e04d86a1be698ccf3e614d2baa15b41d05ebabe2f33c762f14ea616"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.865/magpie-cli-darwin-amd64"
      sha256 "8a5991202e3f8905e06f8dce637dd96a12919a38a764b95e32390f5c713ddd48"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.865/magpie-cli-linux-arm64"
      sha256 "fb51090b2358d2b2458e1ece676317a6fce07add6fea91a8dadf97ab72fc9e97"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.865/magpie-cli-linux-amd64"
      sha256 "7558392b847527e480d2342a531b38feeac887d1b5f8338265884c41d22c8d51"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
