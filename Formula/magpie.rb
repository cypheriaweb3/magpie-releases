class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.749/magpie-cli-darwin-arm64"
      sha256 "9848be60b32e912123bd04e37fae78e0f608c113e1ea156009446196d4a4577d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.749/magpie-cli-darwin-amd64"
      sha256 "a5125303f533f5412c09c3975941ec9db3f5233627b09e001bcae2357d4b309a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.749/magpie-cli-linux-arm64"
      sha256 "72a924d0e2c90f05118b2a27d5c9cc2fecd9e4bf3a918b42fa8ab32584ec06c7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.749/magpie-cli-linux-amd64"
      sha256 "33f61813405d4e5500fe870e8cf009dce33ffc0301b0c0150b390132beadf77f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
