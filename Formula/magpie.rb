class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.305/magpie-cli-darwin-arm64"
      sha256 "ebd8ed990347860ac7eaa9c14ef6a5a2d27f388ea617ee76b9f8d7b181383dcd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.305/magpie-cli-darwin-amd64"
      sha256 "7aec18e555b39020828444ab5325b2f9f6f350c95dd44c4f19bcefe1889ecff6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.305/magpie-cli-linux-arm64"
      sha256 "6a5494dac71b9ebe3f200f8f760d26ecb6a303d3a38d6f2fb68517aaa2821517"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.305/magpie-cli-linux-amd64"
      sha256 "69a6a2b02e59a7903fd2564bf39a84c7836ced0e3960616568c2bec9ce80a985"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
