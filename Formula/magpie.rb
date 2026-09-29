class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.422/magpie-cli-darwin-arm64"
      sha256 "8c768b31ca08ff40af67df5e0f55d617bd9b6e5752d508982be3b24a49767792"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.422/magpie-cli-darwin-amd64"
      sha256 "df04b8a2de3d4dfe3232d84b923077cf41e80357d54260033b72570e08560ec4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.422/magpie-cli-linux-arm64"
      sha256 "b04970b76684ad90e2156a9d54424dbcda6b04fb4eaedf11cd5e92f7881800d5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.422/magpie-cli-linux-amd64"
      sha256 "a4ed16280a15fe6bbc920caf569b9dca0e84ec97874f4815ab29c784dfcac21c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
