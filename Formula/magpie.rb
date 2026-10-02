class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.640/magpie-cli-darwin-arm64"
      sha256 "e90be02a73c9a47d3a9a7447e8cdf3baab1143d04701d77002c6ebde0b85be0a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.640/magpie-cli-darwin-amd64"
      sha256 "5aded3a9f7b5e5aa66334817b61961e0d0ed0ff608a55d41ce0f8c553ca7ddb5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.640/magpie-cli-linux-arm64"
      sha256 "3142ee34276f3e0cabb92ef2458e6845a1ac8dd4aba55434b638543244b8e669"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.640/magpie-cli-linux-amd64"
      sha256 "2ecccc8bc99ad169c91b8e99dcbb5dd05c03f313fe48f1b7511acf72fff8ad17"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
