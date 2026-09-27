class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.209/magpie-cli-darwin-arm64"
      sha256 "d99e204fb252f53deaf2e7d59d198ca492213430f375d58205a790bdebdc1d74"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.209/magpie-cli-darwin-amd64"
      sha256 "67f731600594a1744e37b204c952b27f0ad634be406e5ffabf579a532490add4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.209/magpie-cli-linux-arm64"
      sha256 "d1eb570ca1318681d5e8b1bcfbba68f8d35296dd8df004a941cee16d2e998c3a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.209/magpie-cli-linux-amd64"
      sha256 "6b6d19cf955f53105626c8351281f7895e804733eed54b1cb353b068d9e0ace5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
