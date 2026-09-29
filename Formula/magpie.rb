class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.390/magpie-cli-darwin-arm64"
      sha256 "f5e87b597aa6e02014c89f77018ce1dc3dcc2087936038cda2b23f2aab20036d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.390/magpie-cli-darwin-amd64"
      sha256 "4c1fb90ada9a61422317ad6eedcb96c70ebda7f0322908e64601c7e712e0944d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.390/magpie-cli-linux-arm64"
      sha256 "da86ca818b5751210324aa7c1434b52d7b19b91d36dadc5bb56cbb02859964c3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.390/magpie-cli-linux-amd64"
      sha256 "1fc773a8bf8298b4a7a805daa85144d2b642f506d62e852a31b2856a1342cede"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
