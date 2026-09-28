class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.278/magpie-cli-darwin-arm64"
      sha256 "a0e1f8b560bc662acdaad1d4ab9a04bfaef6ab7eda0cffff08a151bb7cd58d3d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.278/magpie-cli-darwin-amd64"
      sha256 "193b6ed0ce4859405d5c820602d00bcffa331bc96186fc741df479ecb829dee4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.278/magpie-cli-linux-arm64"
      sha256 "f6424885c713cbea88023581b7f86d9f62caec5205d604a759d37509e633c977"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.278/magpie-cli-linux-amd64"
      sha256 "13c9273810542beac7ac65a594e2506dadbcdd734aea589d785d00ecebc706ce"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
