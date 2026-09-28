class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.225/magpie-cli-darwin-arm64"
      sha256 "3b3809c77fb408535ad61517122d30081b17708b3aba80580f2f085b3f9927b1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.225/magpie-cli-darwin-amd64"
      sha256 "98f3ee337cabf5df37496e80e4719b5bc341976e548f3fd980809e5a92f03a4a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.225/magpie-cli-linux-arm64"
      sha256 "da46aaa5c205f646656625ce5df42db69734bf550a303b37a13c266452a38dd9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.225/magpie-cli-linux-amd64"
      sha256 "4cac8354aea7e880cf53085ad8d70d9c3c8e44445794ff1e8cd63955d65d75a6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
