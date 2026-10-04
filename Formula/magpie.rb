class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.875/magpie-cli-darwin-arm64"
      sha256 "06b8e24c6ea8c1e055a361899aae42f4cc003a635ac0a3eac9a2c2f68e701b8e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.875/magpie-cli-darwin-amd64"
      sha256 "313f0a92dcaf4899d13821c80f60d260e7a9fc95f13871d5f498df70d1a3d394"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.875/magpie-cli-linux-arm64"
      sha256 "58aede2e063c26824bd0a7dfa1384b4b7f2780dae8bd2235ccc4fa9572311f96"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.875/magpie-cli-linux-amd64"
      sha256 "80edfb877cf6397dc3904898d0389ffb747c5188765f814f9ccb9179d2dc31e3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
