class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.217/magpie-cli-darwin-arm64"
      sha256 "67451517fde824757e39fd5d00bb291da96e61aa1bd9a34db5f7244d28a67009"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.217/magpie-cli-darwin-amd64"
      sha256 "ee62c9670819db6ab8e8e115f2f6fee1e087be351119f553eb9d7b2f07b2c218"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.217/magpie-cli-linux-arm64"
      sha256 "7589e1a9fd144690e2ba7ee3ee8b960ef52f0eee03ce09e6601266ba3a699c87"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.217/magpie-cli-linux-amd64"
      sha256 "14a27cb6b0fbb9c33bb3e41fbbd51d5a9eeace18e6a4e3e0ab648a148ebc27c9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
