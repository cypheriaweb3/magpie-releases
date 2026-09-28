class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.248/magpie-cli-darwin-arm64"
      sha256 "50c9917948487054739d52f10c3c546d654593dc214e21823aecacad3f0eb93c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.248/magpie-cli-darwin-amd64"
      sha256 "36c7c186365f8ddf94cc7c792db27226ca0165a1f816ef7a9cf9637f6138b94f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.248/magpie-cli-linux-arm64"
      sha256 "6cbdaa8844fc0144a375cbe9631a55c14e807d8cc1ac49a9ba11d3873dc3b7d6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.248/magpie-cli-linux-amd64"
      sha256 "16058ab8b0b8a54908cc6f9a5ef670e3338c3c9b443ef81faadcaad392a707fe"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
