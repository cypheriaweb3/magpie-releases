class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.841/magpie-cli-darwin-arm64"
      sha256 "8c2ad5b9876dc5a0aede407b46818467f9c7332814a0d3f2760c90847138d1de"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.841/magpie-cli-darwin-amd64"
      sha256 "2ab603a4e21282ce02ada198d3e6779e462b0dd11c7fa888298dfa0c32e37b4e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.841/magpie-cli-linux-arm64"
      sha256 "d4d7c002e7b1bdf141f5b8802b6420b3f77a5bdfe390f8ba621069cfba566171"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.841/magpie-cli-linux-amd64"
      sha256 "31d2d6d510f1701717fd636ca9dc890f5d9e8f6d29c3d04b072bb53beb66fd61"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
