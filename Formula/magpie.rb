class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.748/magpie-cli-darwin-arm64"
      sha256 "cf73bdd4e5c33db321fe5c221cf0163b76c0e7b670f2323658a9def47eaf7fd5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.748/magpie-cli-darwin-amd64"
      sha256 "55c453f32dfa3aaafca5c2b99b03ca91de9bcd76239a7a011b2b750297a3e1b1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.748/magpie-cli-linux-arm64"
      sha256 "4b7e568dadc134e8a20c14c7100ced0ec9fd59929780b5b7e73326ff8f39abac"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.748/magpie-cli-linux-amd64"
      sha256 "abd231fa2e39cf983c1637bc3d8c706e6321e67deb7dae437eb7bd1dfcdc4fb7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
