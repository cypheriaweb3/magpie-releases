class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.161/magpie-cli-darwin-arm64"
      sha256 "9f0b36cbd8a811f7b42829963f304eab3cf31a3d8ad73cbc0a8fe6a2aafe2dca"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.161/magpie-cli-darwin-amd64"
      sha256 "329e51df433183b5f9410f31a6280f92576f6396cd08e003dc18b3e70d948895"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.161/magpie-cli-linux-arm64"
      sha256 "00e21c05567719e8a547618d2194923252f822e7b84740b5ce8432cce9efb621"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.161/magpie-cli-linux-amd64"
      sha256 "205a84d43f2cf61d9c2eb05397fd0db1f838a990786931ba84618ecf9c593f71"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
