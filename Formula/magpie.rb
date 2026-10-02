class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.634/magpie-cli-darwin-arm64"
      sha256 "de42794b38484a1a6cbc011d095ead2741965117d3fb8b137867eb61cb6306c5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.634/magpie-cli-darwin-amd64"
      sha256 "ef202babeb82600f49e8e4c2046c5077ffe29a2d5196ffb80c733074ce6ae474"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.634/magpie-cli-linux-arm64"
      sha256 "dfd95e938a51cd9bdee25d693b9ccad2fb446bdad6466cee396515dd439e2a9d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.634/magpie-cli-linux-amd64"
      sha256 "f3475dfa14f5996edace32b3e55dc290f083e3fe5d47d30a1bc1c4db34101d2d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
