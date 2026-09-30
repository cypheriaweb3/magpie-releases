class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.471/magpie-cli-darwin-arm64"
      sha256 "96bff65d1c62286581a6591accbbc79dcde1344cf5f3f23531054137bbf32def"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.471/magpie-cli-darwin-amd64"
      sha256 "731851cd09ac66bd8e0e0f83c80ca32c0c8a192d48989e20f5fd690e1a2c55c0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.471/magpie-cli-linux-arm64"
      sha256 "c1892696ee3f94cb1191bf3225b9c558b8a5427cea0081a15fbde9ef86842032"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.471/magpie-cli-linux-amd64"
      sha256 "032c38230fb811cbb9fdf7b913d3129dc6eeb8651fd7579d07f58fcca3cd2d79"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
