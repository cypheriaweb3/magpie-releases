class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.557/magpie-cli-darwin-arm64"
      sha256 "9a88fd0e9b63f681140ac9985a7408c9e42cebb917651fcd007675233749a848"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.557/magpie-cli-darwin-amd64"
      sha256 "ad3be35cb7a7efd4ff9e06463f85f6c7e5ec5305dbb080a6e9e757d891e40791"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.557/magpie-cli-linux-arm64"
      sha256 "79a27d7e906784acf590c6fa2084ed33a5bc6601b40d45c2357c21f7819f3721"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.557/magpie-cli-linux-amd64"
      sha256 "04811d700567eafb96ffc375bfd503289c24d605f43c933008a6e416519d6296"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
