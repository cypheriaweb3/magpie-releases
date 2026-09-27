class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.175/magpie-cli-darwin-arm64"
      sha256 "eca92590a995b0d0ce696bf1aee0e29ae9689ac6452975b3798d8e6320c82287"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.175/magpie-cli-darwin-amd64"
      sha256 "ff61549651591824d37c441fcf966bf21aac216fb6d22f647d0eb327627ab486"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.175/magpie-cli-linux-arm64"
      sha256 "d9e92329964acf5cb75fa8abc3defc76a7b073013ff59a8d2bfb4f09d8c4229e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.175/magpie-cli-linux-amd64"
      sha256 "4b199c3bc62389e490296ade39a060e75cd86db2a026c5be5955645cd0760d2c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
