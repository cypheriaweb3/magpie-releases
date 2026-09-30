class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.502/magpie-cli-darwin-arm64"
      sha256 "525ebb1a10bb5e6165eb3d854b9d2ab92e5d60188518d7ec4368a5a3aac26d08"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.502/magpie-cli-darwin-amd64"
      sha256 "f7ebe1c22a0aee51bb10694ac72f2d048e8d400ce9122ba9bfa9835a95d9a266"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.502/magpie-cli-linux-arm64"
      sha256 "593bbce6f7329a6301e95447a891e01733e641757ec8b6e4a0bf0c7a6c72208f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.502/magpie-cli-linux-amd64"
      sha256 "9fe1cba3a5159b99cfa7dbbeaca126441444d067deeed064ddd62f625c458657"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
