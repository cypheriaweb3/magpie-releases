class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.449/magpie-cli-darwin-arm64"
      sha256 "f6f0c028fe9fb89e0afd75be91c7fcf0276a90ac31e131d7e87b60acc6db49bd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.449/magpie-cli-darwin-amd64"
      sha256 "feaad89edc7dbdb04d772d0b3a16805e5974955e5d65da224cb66ef66ac97f34"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.449/magpie-cli-linux-arm64"
      sha256 "7370b0218e2a75c1d13b9ec58fe2f2228d98f28beb6bd5e4b7f546d839d863ae"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.449/magpie-cli-linux-amd64"
      sha256 "5f457ecaec69caeef692e4b27de0937c776ac9c5c834298149be0bc41629b24c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
