class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.285/magpie-cli-darwin-arm64"
      sha256 "fc94a44cfa29a318136227512c6eba1246335da23455087ef70bfd5d97f81b2d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.285/magpie-cli-darwin-amd64"
      sha256 "fc3f4b06656b78e3bc0e4ec538c4ed645dd519e1a90d18f01dcc67e3b732888a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.285/magpie-cli-linux-arm64"
      sha256 "10468256a90f420da851fdb8870b71f486c592cece8128ad6ee5b7590bbfce17"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.285/magpie-cli-linux-amd64"
      sha256 "f0de319688f3bf8bc26d2b8abcf400219e80fc73d15a988bef19e9acc0b5a65f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
