class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.747/magpie-cli-darwin-arm64"
      sha256 "384bdb6b91f756e77aaad8d45d69d75342551f66f5cf313fc8b86a689de26d27"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.747/magpie-cli-darwin-amd64"
      sha256 "69fa5f176c41505a15f4a86ea243896df6f8b0262c5af2a2cf1998e7223b9835"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.747/magpie-cli-linux-arm64"
      sha256 "7a762da5ea49c8c4015b540404613223e5c3b8ceda00d3a83b9c06c1a7694e51"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.747/magpie-cli-linux-amd64"
      sha256 "a321880042810022ef7fbd68fbc33c3ace1d01fbc90c271ec6ff8a1df1e24fe9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
