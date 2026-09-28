class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.341/magpie-cli-darwin-arm64"
      sha256 "2ca9f05d2fb6797ee315ca2e362697777907c60be5d074d440ebc00cbbfc1b3d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.341/magpie-cli-darwin-amd64"
      sha256 "051b0d64cbded2f38605b8b3b46708230f0ef27d013e4df313bee6f58fe9445d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.341/magpie-cli-linux-arm64"
      sha256 "f4834f9391a4a4f37051733c034a19df913e3578eacf7d2b2a2d3daa19d8055b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.341/magpie-cli-linux-amd64"
      sha256 "13bfa469988075c84cbf1c1da87b31655da304fdb30c552edfee70627139e09e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
