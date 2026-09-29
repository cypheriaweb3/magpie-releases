class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.393/magpie-cli-darwin-arm64"
      sha256 "e02edae8f8270f6e15eaec08fcd7c41204715b5a0771710563ff24e134c24d2d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.393/magpie-cli-darwin-amd64"
      sha256 "b21899e6ff1880c39340119af1d99d52a61af121e5043bfb26577ef4fbb4f2a5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.393/magpie-cli-linux-arm64"
      sha256 "9e6367b033ee4eee56f3dd0482687f4e5c0712108deb37bcea5475c9c3711d32"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.393/magpie-cli-linux-amd64"
      sha256 "3b6ea10acd6e738b52dcf42e8f0fbd363d80280e8a5cdfc93dbbf12e7ed49964"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
