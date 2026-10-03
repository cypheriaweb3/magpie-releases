class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.761/magpie-cli-darwin-arm64"
      sha256 "3cebec713b120407bd19257f4c578bb0bbc38b271c1acef142b61c3d48fdca51"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.761/magpie-cli-darwin-amd64"
      sha256 "11edf2fd62eb988b5da4e8b7a7fe86dd6d65ade593d3dc9c9921d57be5c18c7c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.761/magpie-cli-linux-arm64"
      sha256 "ce1ce0a6edb2e7c98ea69f6ca760ad810bf8190c5e5b27e726bde733c4e71ac1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.761/magpie-cli-linux-amd64"
      sha256 "9b278fc8003109d37619a5b9d1039949b12e12faa1dbac51ca1d0d110d384949"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
