class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.404/magpie-cli-darwin-arm64"
      sha256 "84ceeb5067326b8b6d5b140364c4d03744401516f49e0a1639284f50ff5f40fb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.404/magpie-cli-darwin-amd64"
      sha256 "c84a3e82eb0c8fdda4664eaf9294f818ad07960f7dfc9b41efbcac0acb595360"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.404/magpie-cli-linux-arm64"
      sha256 "92eaf02717a13be68d9989c6a7546d04de1e2bb0a198f2a793021b6499f78925"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.404/magpie-cli-linux-amd64"
      sha256 "211d84e3bb4a3b07db88ce3d116d52c65d10899190f0682793c04a1afe87ed42"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
