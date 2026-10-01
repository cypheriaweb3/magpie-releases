class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.589/magpie-cli-darwin-arm64"
      sha256 "261145cc3bf402c2465bc1a8ae4a4b7c5b1f7d417979d4d8cc5b081ace328403"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.589/magpie-cli-darwin-amd64"
      sha256 "020b0d9eb351f4ea6fe1d5bfeb8c4219214eb8486644b642606a81b9c0daee2c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.589/magpie-cli-linux-arm64"
      sha256 "c3f3f6820e298270e3a44ccd489d46402ece2da5b07b12bcf5b2add2e692a5a6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.589/magpie-cli-linux-amd64"
      sha256 "db10a1419cd90fe6568f998e851fc9cc357af15282293b629492799bae28b073"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
