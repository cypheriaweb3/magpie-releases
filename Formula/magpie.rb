class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.531/magpie-cli-darwin-arm64"
      sha256 "05359c1e9309378295ef363b6ffa975229999420e79a04f0daba088560601b11"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.531/magpie-cli-darwin-amd64"
      sha256 "5771f00551ccc6317375c9464c78b43a21f04a3834e01dd27c8b84fa72df84bb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.531/magpie-cli-linux-arm64"
      sha256 "865b8653ef27865f0595ba8dd72527e017ae667ad06ea78cc2d0dd441b4ce051"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.531/magpie-cli-linux-amd64"
      sha256 "a968b8ca14f12a9b39ba95df7b7d286a4a0d7ab8aa3e1f4b2d2b89e5e34045eb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
