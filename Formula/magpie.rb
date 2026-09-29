class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.376/magpie-cli-darwin-arm64"
      sha256 "9ec5ad871da6a8f0e1c4256519da1478e6c34d648a8973608b9b950933721496"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.376/magpie-cli-darwin-amd64"
      sha256 "1e7ddc1cbb047d99b329b71a5ba75baf59430ef3424edd5845f014f53a74cd04"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.376/magpie-cli-linux-arm64"
      sha256 "bc4b4c4ddbaccc4a169375591adb30b42da5fe37ee45d928ae630a0a65ba1b9e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.376/magpie-cli-linux-amd64"
      sha256 "6c4f190e285fe1316454834f5e8cae971f0f848dba3a2d3ec157cb3d982d8ac7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
