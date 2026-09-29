class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.403/magpie-cli-darwin-arm64"
      sha256 "25065fa548d5178e55f3c64d3e9078512854cc0a03564e538455f3ed65577ace"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.403/magpie-cli-darwin-amd64"
      sha256 "777316ebdbc3d3b3f7facd6983d211e60cfc6477c0c9769406201632a099baad"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.403/magpie-cli-linux-arm64"
      sha256 "dfa244947d8f3d9e6a0a10c2490083914ae4e4c812ad156047cd40facff54bab"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.403/magpie-cli-linux-amd64"
      sha256 "c3b9fb1c3485075d85d321d4980f5082abede67e3268ba5446c9f7b5d2d3d7ff"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
