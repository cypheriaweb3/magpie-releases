class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.885/magpie-cli-darwin-arm64"
      sha256 "f82994ef6ec910aa1da120498ce1b495f97c4879613636c0a1746b4c1c25e8e4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.885/magpie-cli-darwin-amd64"
      sha256 "94108adce0fd9989ea66927dd5e233664730c50bd7fcdb1372b6cc1021b23ac7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.885/magpie-cli-linux-arm64"
      sha256 "3d066bd763a8f0ea04d6eb5bfbf78df77b99c9bc7ac46734a1bd5922f54431e2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.885/magpie-cli-linux-amd64"
      sha256 "22c7c45161bd211970b6dbf2a2517d74360c88480d1dd4f887c661f3512407f0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
