class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.514/magpie-cli-darwin-arm64"
      sha256 "01ef6a55a7c4d41234918aaf846caf364d626fd6864880bf5da47857a046e263"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.514/magpie-cli-darwin-amd64"
      sha256 "33e3556345601a5bd76c88c54215dc8cb02a22cd337b0358ebcf67cbe335ec82"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.514/magpie-cli-linux-arm64"
      sha256 "aa7a21a65c74ff789efb29cfe99231b140cbea7c11a951cc40e68d4114fe7b5b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.514/magpie-cli-linux-amd64"
      sha256 "30f3f40346313978535255f4d5fd596a22168ef607f4bd412900bd52a90ac84f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
