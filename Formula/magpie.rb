class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.744/magpie-cli-darwin-arm64"
      sha256 "8e3a2f4f898ceecf3c6a1db5f4d09a55f7a765c9d9e4c76dd6a5241cfd2ed0c6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.744/magpie-cli-darwin-amd64"
      sha256 "e20674ad0d4239164aaacd691fcbd9818051b1f7517664865febd52c07da7125"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.744/magpie-cli-linux-arm64"
      sha256 "1707ee0b891dd290b5746703aa3b0243694f6db08a69862d19c928789478cba2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.744/magpie-cli-linux-amd64"
      sha256 "81a7e8c95a1393cc4632eefe1da3a160581bcbdff9dc7bc36075c7780310c719"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
