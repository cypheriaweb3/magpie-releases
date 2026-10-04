class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.870/magpie-cli-darwin-arm64"
      sha256 "3c9ee92722e0c40b8e1005651c19535d284966e2384aadf9698b374a82e18307"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.870/magpie-cli-darwin-amd64"
      sha256 "fc9848e21979f537f9a72290b207fc85f7ead4e119144d916213eda6fc15e3aa"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.870/magpie-cli-linux-arm64"
      sha256 "caba26faa92ad0f8416620bda6a32ea8f220fdccb79178f8a3a960dcd9cac54a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.870/magpie-cli-linux-amd64"
      sha256 "f4d9ebe628e33d12cd1e87586a62f33a1402b497a3037cd170cdf22957bbc398"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
