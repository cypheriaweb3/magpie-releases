class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.617/magpie-cli-darwin-arm64"
      sha256 "894b197dc862f38cf001bd44dd8ea9e14da947905ebdc6457ce485cd65acc7ca"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.617/magpie-cli-darwin-amd64"
      sha256 "5d9350d2cb5400cfa37bf8782bced18b87b73affe4ce84b4d80a05a98bc21ce8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.617/magpie-cli-linux-arm64"
      sha256 "21469e6268702ffb2edafabc4ad4541699ffad80d2f46b4be2264eb207592061"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.617/magpie-cli-linux-amd64"
      sha256 "ccc4fe224c1336d13f4855a87ae74c291134851e8e2003ac525e98a689037f3d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
