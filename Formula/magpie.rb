class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.663/magpie-cli-darwin-arm64"
      sha256 "b4f211919b9f438b21f8b722492ad09f29b045eabdba763024bf1e4969f2ac16"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.663/magpie-cli-darwin-amd64"
      sha256 "ca756c26c0b2d0b9a23df85256f1cd500d2e37896535ffed32fa0e751e3e2a33"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.663/magpie-cli-linux-arm64"
      sha256 "089f97e461f1edde69a831904034dd5b555d8f47fb71cb5037dde20e3935535d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.663/magpie-cli-linux-amd64"
      sha256 "9b68130f8774f84335dd079ae6a0f3bc2cff135cb869999d7c43d1466d87cbc4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
