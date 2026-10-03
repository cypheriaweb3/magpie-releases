class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.694/magpie-cli-darwin-arm64"
      sha256 "b87d12826b67525edd9c9153832306c8f0e7919d52da13e244e6a2420b382762"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.694/magpie-cli-darwin-amd64"
      sha256 "a431dcc9d18a199fc0152d39c5b3af191c8de24044a8611da0cd5d0612466de2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.694/magpie-cli-linux-arm64"
      sha256 "f3e84272bfc1c7f1c46127f40fd933f5d55344b40725057f1fdd4e9308c0adbd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.694/magpie-cli-linux-amd64"
      sha256 "3e485a21cca22efafedf806c1da4ca86dc88d96018947993b132a213e9f912d7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
