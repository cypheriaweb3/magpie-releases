class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.230/magpie-cli-darwin-arm64"
      sha256 "f706d175a42abb64bdeb9b03abfd6075b3044d392c6c34f5c89178f98614e322"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.230/magpie-cli-darwin-amd64"
      sha256 "071018642d0cd84c51652f3dcff3ebff35d6508cdc5a86a0aed41f061b716e03"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.230/magpie-cli-linux-arm64"
      sha256 "519388ebc34b0c1dfc4b5567dd745ba959e30fe35ed714cabc3e0a2a191b2966"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.230/magpie-cli-linux-amd64"
      sha256 "254544565e918498fdec3e53ce32fc6b12053e3e07378641c70cdc423ffb53f2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
