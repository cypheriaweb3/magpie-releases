class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.443/magpie-cli-darwin-arm64"
      sha256 "a2aa04e7d865f55f9dbfc8bb2bf332baa21a4ef46211d2470f45a96267299cf5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.443/magpie-cli-darwin-amd64"
      sha256 "ecf3f0a44a60ef782aca4d597aa5a68b2c0747b5542eac5e9496dc779051358b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.443/magpie-cli-linux-arm64"
      sha256 "70ac346a5c23e56c26e41aff321cf4e3d15bb7f88b9a15c7d025aaf31bebadc6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.443/magpie-cli-linux-amd64"
      sha256 "c29f8d559e0587dbf62d9708088ce48d896d3cd94f571c2e8594a3e26a07187e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
