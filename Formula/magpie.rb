class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.727/magpie-cli-darwin-arm64"
      sha256 "2f2672ecf30be05d854f35829cb3711b5df1ece9ee91007e2c24cf1ecc09c82f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.727/magpie-cli-darwin-amd64"
      sha256 "94cb8b85ff213571cbac57590321dfa70818b4746a5a3603c780bd1bfde027f8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.727/magpie-cli-linux-arm64"
      sha256 "74fa8b75c36705d70585b94f886e831a558f0a4bf869583ee9223ebb0321aa9d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.727/magpie-cli-linux-amd64"
      sha256 "30f71124a97cceca0412a5b5e68a1672d874274b7fdde3a8e40cc2586a1cdeff"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
