class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.466/magpie-cli-darwin-arm64"
      sha256 "7b2adda6d04522af9b95fd5478df67c8972f19372734f8b5c90c19301f1c8fe2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.466/magpie-cli-darwin-amd64"
      sha256 "0cd6a87a3301f223d61331bfe06e7215dc19c50ac5974621ffd89f97181b8c75"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.466/magpie-cli-linux-arm64"
      sha256 "1785c15548643d6dc434483fa7934c34c636b1f59723bfc327d68e08ff3a47a7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.466/magpie-cli-linux-amd64"
      sha256 "3a6bafafa227744aa944c5fc394b9746174ad044edfe0e588f91b9feba0f4521"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
