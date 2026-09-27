class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.213/magpie-cli-darwin-arm64"
      sha256 "dc834e604d308433725c874c77acf9977b1ceea004fdbec3ea5cb25b71344afb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.213/magpie-cli-darwin-amd64"
      sha256 "6442b11e419ee759cbc43e3812ca68adbb61601c0b6147cce0dd4f0846beeb49"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.213/magpie-cli-linux-arm64"
      sha256 "6215b043818ae30f77dea60ea637a6c86f27acaee10d77abda26f6082c69ca01"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.213/magpie-cli-linux-amd64"
      sha256 "d9836c5056e940f1150a901cf6c7e66939d93b0b3d0499ae2c137ea48b9195a0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
