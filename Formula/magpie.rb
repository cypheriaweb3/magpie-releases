class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.750/magpie-cli-darwin-arm64"
      sha256 "37cb2b730d7c3f1962f7d60c68c1dc54d74092ab13a0d4d293493d0a84f198fc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.750/magpie-cli-darwin-amd64"
      sha256 "f6805632e438618a9b903201e4612fd171a9eff21e160259e8cee2c721aacf2d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.750/magpie-cli-linux-arm64"
      sha256 "2c452dd875151a965411c3915a1de0140ea5ed647535eb660b80a52aa31974a2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.750/magpie-cli-linux-amd64"
      sha256 "dc13ba08f85b75b34a1543c6ca6c023886c80941f1d4fe4518646690d077629c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
