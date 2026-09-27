class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.216/magpie-cli-darwin-arm64"
      sha256 "eb82068056bf3dc19d3edd4a6403755dc170a21f7e704f06f04298f40c5a4b00"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.216/magpie-cli-darwin-amd64"
      sha256 "b698e8396a93144d8747809608dd4bc0dbb1b699b1ecd3e7a6b95bd619ea59f3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.216/magpie-cli-linux-arm64"
      sha256 "c553438f190231546e300bf53d02e4d7676b6e6b5e03adfff625bba144de44d6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.216/magpie-cli-linux-amd64"
      sha256 "43d1a9f5d03b3473cfcb5a5d2e65b12ef8f8ea1dc72d420cfb5030eb06956300"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
