class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.452/magpie-cli-darwin-arm64"
      sha256 "f856c20429d2be95f5617736f29f5daa899774153a0f2b4d50006b212ee199d2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.452/magpie-cli-darwin-amd64"
      sha256 "c954a7b962a5df56bc8ad7d4f15b79daaa143e3ebfa7ff2345881ccec256573d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.452/magpie-cli-linux-arm64"
      sha256 "ea8ab057d09f96a8b29a514f508351ce540ec43c1bd776a40eead3131111d2b3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.452/magpie-cli-linux-amd64"
      sha256 "fcb9b8dd62bf77033fa24d7c1a1245d47f98702a567286cf4486ceeb73f2a1e3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
