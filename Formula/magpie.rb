class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.687/magpie-cli-darwin-arm64"
      sha256 "b160c5fc5cbe4bb124ffd9afdeb4d97e94dff168df71401ae3c44ddf79ef2bbd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.687/magpie-cli-darwin-amd64"
      sha256 "eaabfa3c5bbf830100e354ed8e91a87ebecb3092d42e58470e009c4a0f67f87a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.687/magpie-cli-linux-arm64"
      sha256 "e0ad782d892e433273161e939a4901e3f4c82d7d2d4a78ccde588369f8c240ab"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.687/magpie-cli-linux-amd64"
      sha256 "8f60b494ade0c164a1723ead446511f9d1dc19a45b4d4252c1888508c5550440"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
