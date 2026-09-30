class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.515/magpie-cli-darwin-arm64"
      sha256 "2b2f28384ac2d0583e15e60336136be474656b5ab9384897eb34e9b51597b3ac"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.515/magpie-cli-darwin-amd64"
      sha256 "5bb3b1bc40ac95d3a74e348b385e085442da1416855f9875d0ac3c3a6cf17081"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.515/magpie-cli-linux-arm64"
      sha256 "de18d9182bf73b2d03f5fb0794233d8b24302b2ef74b66ff8c7d910a93f2a0d3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.515/magpie-cli-linux-amd64"
      sha256 "c023a5c6b176f9a0d91a459f3c2996fb862231fca2ffc8a395bba17eb51c5de9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
