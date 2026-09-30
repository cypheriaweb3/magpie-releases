class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.506/magpie-cli-darwin-arm64"
      sha256 "fd2b853884ad2ca21d6052e3a827ce0e41b391b79bbeed46b73ae3095279f337"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.506/magpie-cli-darwin-amd64"
      sha256 "e1643aa9f89f49fa050339001953676265b22dc5ad47f81624dc3db3d46a415a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.506/magpie-cli-linux-arm64"
      sha256 "dbbd6355648c4bdfcb1236c1e861e7e19ad383d24797a2b878e63bd6bd1c0473"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.506/magpie-cli-linux-amd64"
      sha256 "40a81d98d3734273cda0339477eefab6d4068f2cd13be17db73a14d3d2e82845"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
