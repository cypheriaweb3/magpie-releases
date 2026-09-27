class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.173/magpie-cli-darwin-arm64"
      sha256 "588af3fbdda0efe67feb8c4e4bc68411925f31b635dcec0b04e3d6ba59110886"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.173/magpie-cli-darwin-amd64"
      sha256 "a7e8252031f383750a573d22d5bede52f52f1af1c0c7a0ee5be274b5b7fa8872"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.173/magpie-cli-linux-arm64"
      sha256 "5a9b2f9b8d89d5185ab2f4ee339bae518b060a0e835dd42ce9f90f03289e0eb9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.173/magpie-cli-linux-amd64"
      sha256 "631e0ff1d59deee6343017e85f735c4b97c73f408bfeedf628d9af53a48094d4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
