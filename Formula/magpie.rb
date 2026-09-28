class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.325/magpie-cli-darwin-arm64"
      sha256 "52910277130894b98d65c7b1b063db604474a0c8f8544e2811acd1514c4abd71"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.325/magpie-cli-darwin-amd64"
      sha256 "2e6f4d38327ccd9af4743628b4ec3538422a4c542235803fd2710f94d7448506"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.325/magpie-cli-linux-arm64"
      sha256 "2b863d01efa5a81193d78ddd360fbad11f5485d6b4d89dcc385de353b214de10"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.325/magpie-cli-linux-amd64"
      sha256 "f3a6aa6d30661a8edb1d040ad67cd57cbcb83f86ff3dfe63284c5163db8e6710"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
