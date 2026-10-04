class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.805/magpie-cli-darwin-arm64"
      sha256 "3373a08b3848fce72f61174cfe50e4453c7733003680e6d1246e3d83220ebf94"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.805/magpie-cli-darwin-amd64"
      sha256 "65470e378ccc54f8e3fac9262e4d72967a4767055197255c908622b2d1ae8367"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.805/magpie-cli-linux-arm64"
      sha256 "b2516cdbdcb354e0cc2ebc4e101613aa8aff99637373eba68fcaaadb02793115"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.805/magpie-cli-linux-amd64"
      sha256 "b258beac4faba357e85eb758dada3144291b2e1199ca15b0bd41c777baf21c97"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
