class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.768/magpie-cli-darwin-arm64"
      sha256 "953b1dcb79fbccb1439d5a22a9db38fff168aeed881a6400cd7e535b56bb792c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.768/magpie-cli-darwin-amd64"
      sha256 "fc57458a1a038bf1570dd8f1c9d4bc5da0e697d70316e158a9f662b09faefcf1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.768/magpie-cli-linux-arm64"
      sha256 "d764ac812996bd621bfb046dd8015c9d867723b040636ec4db49d61c5c88f9eb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.768/magpie-cli-linux-amd64"
      sha256 "29bd00427df066fc20b65051cf0a4ac478ebc2419b30dbf24c32ecefe9449332"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
