class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cypheriaweb3/magpie-releases/releases/download/v0.1.888-cypheria/magpie-cli-darwin-arm64"
      sha256 "85915f25da5add460c930e7c793612f64e5abede6f5b0e2f62f59b38e8c9f6a1"
    end
    on_intel do
      url "https://github.com/cypheriaweb3/magpie-releases/releases/download/v0.1.888-cypheria/magpie-cli-darwin-amd64"
      sha256 "1b71c072c670a74139e81778588fba06bd554b57b6e4d2ca6f2f5607355eb747"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/cypheriaweb3/magpie-releases/releases/download/v0.1.888-cypheria/magpie-cli-linux-arm64"
      sha256 "72f6e3c0d3b5e2508258e7f002cd23d18cdbc5a79ab0b9050e9c69e95fd13a63"
    end
    on_intel do
      url "https://github.com/cypheriaweb3/magpie-releases/releases/download/v0.1.888-cypheria/magpie-cli-linux-amd64"
      sha256 "69ac093689034350ad704bc06426b4baa55afe3c2a85e5ae6056e517d8df7c9d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
