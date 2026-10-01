class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.571/magpie-cli-darwin-arm64"
      sha256 "fe284838910d226f8f0da48210f32298789fa1391b71afc1063bc70c0ed870bf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.571/magpie-cli-darwin-amd64"
      sha256 "ae3ddea7c2300771d99ced5a26f0f731b775d9afb06d3d3eae5ac22704581a08"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.571/magpie-cli-linux-arm64"
      sha256 "c782140115be06255eaa7c87da6598f247e33c77aae4c44384dcd203f2c125d3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.571/magpie-cli-linux-amd64"
      sha256 "0d8720f75201d16d1e8f91cc63bd4dc77cb11c756c67c17d15ab8b286b4ddb36"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
