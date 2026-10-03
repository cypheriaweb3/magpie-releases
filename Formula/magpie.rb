class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.798/magpie-cli-darwin-arm64"
      sha256 "5597fd0792c79d1aa712bb64c46b1bbaeada76f12d556178d787aabd9f2d2ddb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.798/magpie-cli-darwin-amd64"
      sha256 "05de56d42ee583e757f318cea8eef2b55c23c56ce17f2fc70916e669aaa0eec0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.798/magpie-cli-linux-arm64"
      sha256 "9ad07f674ec4be932c72eb557021aaf8c0a43bfda358d98dd7a1487898df6d90"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.798/magpie-cli-linux-amd64"
      sha256 "759e7f56bc454fe77b2ea9e41f4a78bc85841261a60d34f4ae100b7d9959137b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
