class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.633/magpie-cli-darwin-arm64"
      sha256 "bc34d1caa64870030e270d7e087eabf377f92ff449ca0de96df548b6da6847d9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.633/magpie-cli-darwin-amd64"
      sha256 "002c27643699fc45b75fec6219a03657c87ca52e9236c4aca03a0d4b1e508791"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.633/magpie-cli-linux-arm64"
      sha256 "4b80817fb83f91375802e35c0bfb9ba91f9e6e671fd9d6798896df3dfeb33e4b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.633/magpie-cli-linux-amd64"
      sha256 "959aaa2b42bcc79c8848538c9edffe2b37bff5db2b54807e6a94ffd82c44e256"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
