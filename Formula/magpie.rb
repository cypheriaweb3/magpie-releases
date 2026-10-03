class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.769/magpie-cli-darwin-arm64"
      sha256 "165aafaca0bf164277bff8cef9ac53d0cd144d905baaf414340d840dfd595589"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.769/magpie-cli-darwin-amd64"
      sha256 "27248d7d654f988be1a2bc839cfc989df5c4c9a4e251a006817bec2d584c7eab"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.769/magpie-cli-linux-arm64"
      sha256 "a9bf800a4f59ac05311c6e8dafdef1837791fd677efba5906f222c6a7f50e626"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.769/magpie-cli-linux-amd64"
      sha256 "83a07dccbc748db07feb81fc0f61b071a647233d129a4e08644ed02a2a8ffb3d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
