class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.649/magpie-cli-darwin-arm64"
      sha256 "690dd8ddf8dc1ace2cd96f56c386f94613bc13725f2c10b350ccf5b75f6d5aa8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.649/magpie-cli-darwin-amd64"
      sha256 "c84efcfa8751a04eba8e5b4d73c258e5e7bff49b39055173039ea72cd3abd905"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.649/magpie-cli-linux-arm64"
      sha256 "03c50cd5dd9ebcde1d3aa66b14fcc7d9ee493f11347b395881ab151cddf73d80"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.649/magpie-cli-linux-amd64"
      sha256 "5d80cb926268a02ac713dbfdb7c62412194bca857e20560c57bc4e9ffbd933ed"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
