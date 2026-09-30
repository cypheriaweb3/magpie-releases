class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.436/magpie-cli-darwin-arm64"
      sha256 "aea9ee656301e929a556444c76442e5c199767c48f444de28a1af8920ae1f205"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.436/magpie-cli-darwin-amd64"
      sha256 "a2bc801a469f71dfb68517cfdd1609185569428121900b967815957fe23df638"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.436/magpie-cli-linux-arm64"
      sha256 "171e1a00e0ef8d612dcfeb868b64899b5eac4ef6cc2d09f3c3ded7b4fabc1075"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.436/magpie-cli-linux-amd64"
      sha256 "ac72994791c9c4fd5bb5d08dba73c716866243e3d1dcda22cba31533d51029c5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
