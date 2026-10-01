class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.567/magpie-cli-darwin-arm64"
      sha256 "9e37c6ef688af5539d6b6980ae24d2ccc74fc82a5ed4ff76dddf6506f99d69bf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.567/magpie-cli-darwin-amd64"
      sha256 "34fa57a2ac526bb956b28bdf077d8996ce80ed3599ecc8f13ca8dfd74894d34e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.567/magpie-cli-linux-arm64"
      sha256 "e9e8e159d421f1d9045a3537cf27cf46998b3e817cf4edee1a0020f759ca20ac"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.567/magpie-cli-linux-amd64"
      sha256 "81f274ad9fc157682089721ce9278fe8fd4e64db3535c107564d193ecdc80c09"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
