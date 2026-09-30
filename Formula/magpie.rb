class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.535/magpie-cli-darwin-arm64"
      sha256 "aa5461d570a9c67b96603d5e07084d768db6e51c4b2a2778592d7befa2b30db6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.535/magpie-cli-darwin-amd64"
      sha256 "ae428539b1d3a6d8fbbe45eaa23a2a0bebc38023ca99a24f55ce90cc843c3232"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.535/magpie-cli-linux-arm64"
      sha256 "a96bcd931adbd38d477b19a1db0e412f4f78d6b60e908c58c280c1722673722d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.535/magpie-cli-linux-amd64"
      sha256 "dce1e09fd74a03cad4aaed5ce2a2a4d8c5d1b44400efb6eda03334f80f47c6a1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
