class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.472/magpie-cli-darwin-arm64"
      sha256 "e80be29158077217a4ae2a22521a10e233a608cf46a94b117713c171ad5b2845"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.472/magpie-cli-darwin-amd64"
      sha256 "e43999a4085ba3f9bee5f5cd491cf8eb4d58ad03e0b2ba7ad06a32560189aef8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.472/magpie-cli-linux-arm64"
      sha256 "cfe89c1b948c4f2703c7e992479ccc8e8abad321ad325a5090f69d9eb13da87b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.472/magpie-cli-linux-amd64"
      sha256 "192727e2576f8833c7dbc3e87ea20f3fc4695a3c2ac95c7278620d221afb86e6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
