class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.869/magpie-cli-darwin-arm64"
      sha256 "45fae355e85c79f105569de94890e0dc3c18556aa8ccc430bd39745ea4c4d955"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.869/magpie-cli-darwin-amd64"
      sha256 "47fe40a3b683697cbf3c984b4cac239845aec3d649cadd29cb1e5db3662e88e8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.869/magpie-cli-linux-arm64"
      sha256 "c7c8b9e24025d80f35734bd42ffe327c65d142ab65115a13075c34c8994f7992"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.869/magpie-cli-linux-amd64"
      sha256 "449c88f9e50a7262d968fb6f94dec770b802fd52d809b39aae800b6a997dfdeb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
