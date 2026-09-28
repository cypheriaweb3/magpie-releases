class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.289/magpie-cli-darwin-arm64"
      sha256 "f3fe84a811f684e268522e02a15ca56c83214d47419d1a5670ee97781381295b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.289/magpie-cli-darwin-amd64"
      sha256 "6fb16e13af89952f9e158823cac29db9e21485a026f86b5666cd4679fe4cf594"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.289/magpie-cli-linux-arm64"
      sha256 "e6e2efd8f565868a90c016e6d6c48125721b732650b36d3de8d3ee14ee7c0d76"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.289/magpie-cli-linux-amd64"
      sha256 "c0df1d470ced58231948653e86ae720e74380822288eea0195c6ed82d829f393"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
