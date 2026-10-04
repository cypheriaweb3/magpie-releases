class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.846/magpie-cli-darwin-arm64"
      sha256 "664b57b73ce9551ab770cf480586f362de2944e7c2b4e1438f6982fc0aeb196f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.846/magpie-cli-darwin-amd64"
      sha256 "468e5cbb289fbb96a78392b82347c623c18835254265258e6b8eafbe4c1f3449"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.846/magpie-cli-linux-arm64"
      sha256 "520a5b7dbbc33517ed2c87aec5bd277119ff71153a87c5793314ff81c53bf360"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.846/magpie-cli-linux-amd64"
      sha256 "2115ca7531f7dc87fc6869df296734b3b097f88b570eb0192eba194aac868266"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
