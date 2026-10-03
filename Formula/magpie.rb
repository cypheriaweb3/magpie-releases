class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.735/magpie-cli-darwin-arm64"
      sha256 "08bf53559ae1e7e0d21fed1511c4d7c50c3318bf79ebc531cd64dcada3f2eb68"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.735/magpie-cli-darwin-amd64"
      sha256 "e36e6159467262507d8531d5cb87e58ce90302495b5576c5ac2c92321701fd4c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.735/magpie-cli-linux-arm64"
      sha256 "6bd2bda8fd2e1ce54dcb01e78fe8dcf59aba42c50265f63027e507fdd9bc1c48"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.735/magpie-cli-linux-amd64"
      sha256 "ed9e31cf87bdc9e54f474c0bed44118d291aa7087720b2cdcc2412da127095d0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
