class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.766/magpie-cli-darwin-arm64"
      sha256 "daf429b1eef34a0dea07c82c62c3d80f3a210eb7e86b926df8e42d086c9a3c3f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.766/magpie-cli-darwin-amd64"
      sha256 "269092951702e467e6ab3695c4df3525114a7e8a890c5832e7238caf962f2b3f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.766/magpie-cli-linux-arm64"
      sha256 "788525b7ad641bbce71c2197cf7a78a4136ccc8adfd96b4a3516649ee7d5e2db"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.766/magpie-cli-linux-amd64"
      sha256 "35cf178675f46cf1bc9c3b2b6279eb75a26b7132cb8b5d1035ebb1b426b1ecf0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
