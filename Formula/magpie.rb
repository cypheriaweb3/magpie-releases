class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.423/magpie-cli-darwin-arm64"
      sha256 "30c67ad180344039ad0e2bea057dcac0a2d329f0042a6125f8d31b37aa97e67b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.423/magpie-cli-darwin-amd64"
      sha256 "09a3ef2fee2faa9d3d81edf0a436de5836fea5760d53e53be281d99f10471848"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.423/magpie-cli-linux-arm64"
      sha256 "1827844eeed11b9f1232013fc891427e1c9761bae24f14a1119f222403a6e4e0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.423/magpie-cli-linux-amd64"
      sha256 "6ae14c8cf35602b77407a983b4370891ca5e8ae750bc6083ad4792ba833baa42"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
