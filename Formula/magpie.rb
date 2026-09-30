class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.525/magpie-cli-darwin-arm64"
      sha256 "53d677b3dc004f53f7dc9631155277609a19b57e4d0f0d16b6f506472805218d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.525/magpie-cli-darwin-amd64"
      sha256 "f32be351d056a9d0972280c564559cb5f23e63f99c1531aa2630a37c20e6a4b2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.525/magpie-cli-linux-arm64"
      sha256 "2f63112b447d560f22eac2be4697e466abb0fd919bf66d3e518f19d1ff452c27"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.525/magpie-cli-linux-amd64"
      sha256 "b6800f7f22f0296c0df0f90f59cdb61d63f52a892f2ecff6da97767ca494e7a4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
