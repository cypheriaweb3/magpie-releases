class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.816/magpie-cli-darwin-arm64"
      sha256 "312ead8ff37b10ac53b8799eea8b961541ee2b8f53ad8772f90bfb9b8ad99303"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.816/magpie-cli-darwin-amd64"
      sha256 "c9b2af3309053e832f1028c7f1001931b8c8a2339eec5570d4ac5196184d5d00"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.816/magpie-cli-linux-arm64"
      sha256 "05c6fed6576589a212dd20b37871e20d42b563596f2daf7ab445a6da75b4b792"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.816/magpie-cli-linux-amd64"
      sha256 "77bb265028730da822e23bb0275167994eb7e158288cd0a5a8f5d06eb4291591"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
