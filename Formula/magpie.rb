class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cypheriaweb3/magpie-releases/releases/download/v0.1.575-cypheria/magpie-cli-darwin-arm64"
      sha256 "d1e2b1d0abfb46474c32f69506474a67dccbbb8a820d90f72e5dcd104dd4561f"
    end
    on_intel do
      url "https://github.com/cypheriaweb3/magpie-releases/releases/download/v0.1.575-cypheria/magpie-cli-darwin-amd64"
      sha256 "02bc82e36e5602c27c1d3b102cea64b083bc41f2a19c197d0ede153c387d2882"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/cypheriaweb3/magpie-releases/releases/download/v0.1.575-cypheria/magpie-cli-linux-arm64"
      sha256 "d47e80f21a02f142f58495d807b665e3b5c5aadc4177647d7802c8bc85bf0350"
    end
    on_intel do
      url "https://github.com/cypheriaweb3/magpie-releases/releases/download/v0.1.575-cypheria/magpie-cli-linux-amd64"
      sha256 "bf03a25dd8ce72418267cc2547507dc79814da8c531060790893260ef0f1831b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
