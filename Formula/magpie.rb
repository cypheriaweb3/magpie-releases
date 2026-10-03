class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.716/magpie-cli-darwin-arm64"
      sha256 "a6bc377c38471591110b4cb3b94e2cea0f42cfbb2ad03f003a057d67f735931b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.716/magpie-cli-darwin-amd64"
      sha256 "2567d92e864903ab63abac320bd6ff9ba118fbee407fa07eb5d4bc738894ad57"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.716/magpie-cli-linux-arm64"
      sha256 "456aacd3450e5d6d3bb43155e9136374da9d8f2ddd03e322cdc37f20c9cb31c7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.716/magpie-cli-linux-amd64"
      sha256 "2a43b3f64c3da16949d39da15584f49a95f7cc16381f77b3a4ccada08e96cba6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
