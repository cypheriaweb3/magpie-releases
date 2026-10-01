class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.600/magpie-cli-darwin-arm64"
      sha256 "ca1a52561073ceff9d507d94b173e848938ffb72422e530da6d6162610657086"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.600/magpie-cli-darwin-amd64"
      sha256 "f31bf59c2fc8ad5aea34ddd6efa6d9fd984d21c798a9b31525bb7e813437665d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.600/magpie-cli-linux-arm64"
      sha256 "8c461d93a266408a125175ca14a733d6c349037b08a857fcbb5dd621e61b4bba"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.600/magpie-cli-linux-amd64"
      sha256 "cf6dfc2054d6420f5071be91f6f3024dc3ffde98570e4b763eeac7c4ab0758d7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
