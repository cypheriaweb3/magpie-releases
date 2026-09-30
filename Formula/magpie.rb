class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.544/magpie-cli-darwin-arm64"
      sha256 "b1e3a5791f74a9463cd5e22cd886f34ac4b7d2a6144511d0ff626c9d2e990b6c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.544/magpie-cli-darwin-amd64"
      sha256 "cbd99b25f40fd6d57ba2d1ad6e1906d73a58dd529c7379f4bf19d419f7e6bec1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.544/magpie-cli-linux-arm64"
      sha256 "b7662a6b22242b51c1f250c49bb9a23bfb7eff61fad10a8cc1d2ede802fed52e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.544/magpie-cli-linux-amd64"
      sha256 "128caf8a18f29cf884cb80358b15fd73e131f27eaf6f4fffa7baa677e1341aa0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
