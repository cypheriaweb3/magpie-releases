class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.624/magpie-cli-darwin-arm64"
      sha256 "b86e63a6c0b5bb8efc8de61435c73d08878a0efb21e03e0cc99962b518b27643"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.624/magpie-cli-darwin-amd64"
      sha256 "ec64952aa2fe45bf3fc1e2386203666a3f8daafba128e79999b11221529343aa"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.624/magpie-cli-linux-arm64"
      sha256 "a652ec661ee91e0462ab035a34c5ba18efcb1e832c1b571e1094343ca9a5275c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.624/magpie-cli-linux-amd64"
      sha256 "d894510382d7e657eec4aa23e4dfcf61a82b55df0edfa6496df025321e8edaad"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
