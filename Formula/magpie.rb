class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.601/magpie-cli-darwin-arm64"
      sha256 "55dafc14bef937d5304bd4871e039ead199e05e5d3aba6a714d603550ad858cd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.601/magpie-cli-darwin-amd64"
      sha256 "1bd12a7fcf2508f61e77e75912d1a4a8389801b0aee300d4622e548f9b2b8e1f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.601/magpie-cli-linux-arm64"
      sha256 "7a9ff72fca268204a49271285a0f5e60cb0118d1d596e97e0c08b86cc45db639"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.601/magpie-cli-linux-amd64"
      sha256 "483dc0f031474c155fabaf02c43f80f1ca5e90d162bf65d383bb7b3d5ab57260"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
