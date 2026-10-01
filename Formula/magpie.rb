class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.593/magpie-cli-darwin-arm64"
      sha256 "f5200f4722d80c65f07ae922e17de273465709f4b914231098d2396829692f64"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.593/magpie-cli-darwin-amd64"
      sha256 "7498a94e39fdd2f0cab3b34f31f9cb1c20b7da0c3a1b3da060acd04b99a562e1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.593/magpie-cli-linux-arm64"
      sha256 "b72614ca5fdd85d806e91f8fcd4d4a819e2e497f77f5d982de70fad16e0afd95"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.593/magpie-cli-linux-amd64"
      sha256 "668f9870795b7f98b766817901100edfa9fa8cf54fae6bed21cdaee7ae728f48"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
