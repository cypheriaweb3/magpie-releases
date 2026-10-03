class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.759/magpie-cli-darwin-arm64"
      sha256 "e44fa1ddd2f104007b82e8836c02453d14771e3d8b8bae7ccddb1c144cdd38e3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.759/magpie-cli-darwin-amd64"
      sha256 "2b5381127d04bd50e84713232614771290b1a1aa8d3f34e6214266871beed201"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.759/magpie-cli-linux-arm64"
      sha256 "d5e6c9dd7df8317436a34c2c6103221ad2f08c52672c803968c7d682bf3f133c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.759/magpie-cli-linux-amd64"
      sha256 "1000b684bab505960b448104227a041abe41c9f69e8545f6d168e9ff926f0239"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
