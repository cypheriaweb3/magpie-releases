class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.203/magpie-cli-darwin-arm64"
      sha256 "4dd4f1d83dabe67a45eb9a4a5c667c06a21a19f3f2bcafdcdc31441e472670e3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.203/magpie-cli-darwin-amd64"
      sha256 "8e416d229931157928bd3447800969e0dbc06fcded9c511826587956d5faa0fd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.203/magpie-cli-linux-arm64"
      sha256 "0e49c49272dcec7c5ffb70bf81cf01d217c0d2ab9e67af0331c0b67521f1a689"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.203/magpie-cli-linux-amd64"
      sha256 "dd508dce7a56cdbc5e414bd848c7a9996c2f5d81a4d89c5c81b531f341a46505"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
