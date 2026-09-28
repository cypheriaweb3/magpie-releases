class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.346/magpie-cli-darwin-arm64"
      sha256 "62f60cb7f761bc07349e55206d036b5b6d33061ebad553ab6bb0ddbc2d51a6b7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.346/magpie-cli-darwin-amd64"
      sha256 "6a6600ad951290a9675df980434ec550ab85bf67f0aa3eddfd500ec853564c61"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.346/magpie-cli-linux-arm64"
      sha256 "f4539c698256c4cd6714dc29d3a6ef67b9c4f9bb8f026e9933a4a3a3a7f045ce"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.346/magpie-cli-linux-amd64"
      sha256 "0d04416d86b461144ae5f335ec8351c4aaaf1997bcfc8e8819bb9afa3a88ff62"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
