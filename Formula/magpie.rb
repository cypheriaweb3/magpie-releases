class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.222/magpie-cli-darwin-arm64"
      sha256 "c5415e59e54a09fd2179f58e3638d2233ba35a499d2b3c67a7e232e66ea58041"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.222/magpie-cli-darwin-amd64"
      sha256 "dcefede591fad36eb4e8a4df644db1813ef9ffae88963a064cc06c6fa160e469"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.222/magpie-cli-linux-arm64"
      sha256 "d213721ee74a95c96ebd3127271e9178a4099c35dde40f6c54006e82547ba303"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.222/magpie-cli-linux-amd64"
      sha256 "f9cef363907925e8100fa9a8aada5bc049feb19b9829c4874aae7dc6f32e824a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
