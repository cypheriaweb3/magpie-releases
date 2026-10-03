class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.799/magpie-cli-darwin-arm64"
      sha256 "365f08d82873362087f12f052cb20d27bb27d8490d190978dfdb842834427a11"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.799/magpie-cli-darwin-amd64"
      sha256 "09bc708f59a5ed9f2114c4122c9e211388683001660d5ed8d738bd05f6a35f29"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.799/magpie-cli-linux-arm64"
      sha256 "b62b16f3a5cae85bf9c1d7c6f19b144432fd6c07aa6723f49ce5d873f5ed80a8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.799/magpie-cli-linux-amd64"
      sha256 "9f5e1e89ad17c103224eef5731dd12c936b166223c1f89349d50f9db2b0420e1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
