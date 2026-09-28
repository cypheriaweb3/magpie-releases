class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.330/magpie-cli-darwin-arm64"
      sha256 "1f6c4fdf0c72b2d12cbc987214a17e17c744f8986f896218b04c26b73f241cc0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.330/magpie-cli-darwin-amd64"
      sha256 "2e45dbb48a513a27f7798d02240e86e7e5cf63b35c7f7088c65970e9f6637ec1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.330/magpie-cli-linux-arm64"
      sha256 "833679f7ccd3eea4cc1631405b4cb2451c99cefaa0318047d397744aa06f4763"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.330/magpie-cli-linux-amd64"
      sha256 "018aa641aaca0f6cee01b04a1b83b66b946536bb74381abac4fad453abb0d2ee"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
