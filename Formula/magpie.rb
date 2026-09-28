class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.300/magpie-cli-darwin-arm64"
      sha256 "bf8c6e070c0e32f8c84b8b97eff23f7e5de7bd4004b54184a7c8f3ff26c29eaf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.300/magpie-cli-darwin-amd64"
      sha256 "04c55124a9ca44b7758f45c03159e0e16a8b0a29730992186031d7d800f7a5e5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.300/magpie-cli-linux-arm64"
      sha256 "ef56546771c01527992fbcc3f3e79aa7ee18aec1df9e02ef6f56dfe6f303fbc8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.300/magpie-cli-linux-amd64"
      sha256 "69d12b17058c8d647ff624115a47a0b6dd53eb41c0310608a5000078b1dda149"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
