class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.864/magpie-cli-darwin-arm64"
      sha256 "5f3341178891a34f13d4a28fab013c662a993b1d7c3135f3779934d48c262c8e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.864/magpie-cli-darwin-amd64"
      sha256 "b5d4a1243d59e90ecb3f5f304e11680a13add235ccb0aa1df6c0d6b924ee0c8a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.864/magpie-cli-linux-arm64"
      sha256 "fe9739e240a415e77e437a747d22faad9d9095db6076d9703d3ccb8c4aad6dff"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.864/magpie-cli-linux-amd64"
      sha256 "748a593105b5b7a39b4bb824638db8c5d4ba467542a3ca5f9049a789b229c8bd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
