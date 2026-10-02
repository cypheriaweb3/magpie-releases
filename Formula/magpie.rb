class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.626/magpie-cli-darwin-arm64"
      sha256 "17c314678bc24fe6b963ca74e8e5b542b0017bceef3bb79eeab888a5e6424d82"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.626/magpie-cli-darwin-amd64"
      sha256 "e98783452e8379e2e2f37cfdbad311022352b96f6af7f65e1b9966afc5fbeb2a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.626/magpie-cli-linux-arm64"
      sha256 "2b3fbc9e4c2b49d99d0af889e0d9e1415267e991801766af3b93323e8822fea2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.626/magpie-cli-linux-amd64"
      sha256 "adf010300c075efbe60b3bb1d92cd1867b32a250790d49692626f0e0d50b8150"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
