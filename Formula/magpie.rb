class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.275/magpie-cli-darwin-arm64"
      sha256 "b9e79906aa77155033817881f0c2a946834b5a0fe47a7720b51bb1387011b64a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.275/magpie-cli-darwin-amd64"
      sha256 "c1ab667087dea0b50fb7748797cdc4f6dae1d06a4a4e54e69b501e6c20783ccc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.275/magpie-cli-linux-arm64"
      sha256 "4248a3d776b8a76db45afb58530c0dc9d8478aadc9a93136def820a102e24c28"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.275/magpie-cli-linux-amd64"
      sha256 "27719ffae094a893cfdcefff7563488e8c821c0eccf63bad9dc8cf8d555c8a93"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
