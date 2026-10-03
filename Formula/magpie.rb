class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.715/magpie-cli-darwin-arm64"
      sha256 "85ccc07719c1a8200425f0ae12e44d0d10fe56bc949da5d70ac4b581b1d01254"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.715/magpie-cli-darwin-amd64"
      sha256 "856d49ee50cd202be0d7a58f0686c96581429754581929e6b8755d583ae177cc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.715/magpie-cli-linux-arm64"
      sha256 "793ab67faad7b741e66f7cffecbf13176177a0b29efb9eb9e68968b0e9ef02aa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.715/magpie-cli-linux-amd64"
      sha256 "e3d3ca7cc786e6cc3397e5e7d61c1765d7770234c3880dc92e98ebeca52c9b4e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
