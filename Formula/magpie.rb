class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.408/magpie-cli-darwin-arm64"
      sha256 "ae1478e295d56ae89bc97b02c446df0f422f79c9504fa5781ab4c79ed72c5c8e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.408/magpie-cli-darwin-amd64"
      sha256 "beca3e120f5d429909dcb4b07a0ddc24730c09cd8d36852f9579f0d4b62ada29"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.408/magpie-cli-linux-arm64"
      sha256 "865959425fc3b35f93f22406728d6713cfa0a297acc19aef308a8da5a303e744"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.408/magpie-cli-linux-amd64"
      sha256 "c6f27fd6142b8b37f9866b14b492e75ab8aa407d06379ea4c3d58becb6a4de89"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
