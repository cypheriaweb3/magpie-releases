class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.311/magpie-cli-darwin-arm64"
      sha256 "710b175474e290ec81da708f12bf472b35bf69461ef7e2dd0f71b5238211cacc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.311/magpie-cli-darwin-amd64"
      sha256 "90f6d9bf7a17a6105e25b7b616f574fea05372c520cf226a5ff74957fd3e216d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.311/magpie-cli-linux-arm64"
      sha256 "8a707a4c6a26f845040578c73aeeedbef5cb33b9c0d623aed5a150bae736780a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.311/magpie-cli-linux-amd64"
      sha256 "676aaafac6e3e5bd5b1a277ea023d6d8a1202061bf02dcd958ff957d7df97f82"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
