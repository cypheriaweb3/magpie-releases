class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.405/magpie-cli-darwin-arm64"
      sha256 "2c68c611e2bf69fe6662a8b8691c04f8d0f4fd6e9740fcf93b28aeb566c39e1a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.405/magpie-cli-darwin-amd64"
      sha256 "74fc93acfc666c8e7dadacdb14329db3bc3f43f669431b1de73c2673adf87393"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.405/magpie-cli-linux-arm64"
      sha256 "d50bef29364ac9e037637c46766ee3700564c2c660adb5e4ac17af7e02f2b49c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.405/magpie-cli-linux-amd64"
      sha256 "0215c979f99297cb891e1494be0e95669aa3dd090d95e4af1d423fdb1f7de6cf"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
