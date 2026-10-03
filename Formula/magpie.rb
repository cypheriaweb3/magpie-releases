class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.743/magpie-cli-darwin-arm64"
      sha256 "e06770f1906be384c1be167dc91ae7c1d149195693c5d184d48962563d67ee2c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.743/magpie-cli-darwin-amd64"
      sha256 "7e30a76d36fe3d41f6a38aa2c3fa7ce1cf9b5412b5891dabc98c802edc929757"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.743/magpie-cli-linux-arm64"
      sha256 "d48a6cf79012ccd074754f7bd42e646f0d566c9cd0ffd9716511de3e4a21daf9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.743/magpie-cli-linux-amd64"
      sha256 "570eeb44fb6caeac94fa22ca096112ece0d260beee540fe67409e8d4d6df9647"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
