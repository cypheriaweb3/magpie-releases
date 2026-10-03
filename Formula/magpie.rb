class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.767/magpie-cli-darwin-arm64"
      sha256 "6557b5f436277b7f0263c8368b0d713664337284acaad29934932345cbfa2ac1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.767/magpie-cli-darwin-amd64"
      sha256 "0060f04653b9cc9531e13b8e63c7179277d62b824d955911d79fa300950415c7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.767/magpie-cli-linux-arm64"
      sha256 "fed57509508e2796389dd06f4e8d7790a5f8533ee23fa7d355b1dbd05f8458ae"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.767/magpie-cli-linux-amd64"
      sha256 "a50db117a3885146a842a9f2909f833b1f9f82eca001f6234ff4790f687089ae"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
