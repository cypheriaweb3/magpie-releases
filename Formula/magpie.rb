class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.801/magpie-cli-darwin-arm64"
      sha256 "99d8160d309d11e03e1bf47dca7bc977ceadd026fdf203f3f158cb3bbce19ec0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.801/magpie-cli-darwin-amd64"
      sha256 "1a7596fa0e854cdf83bd580da8e331dbf53cbb79265183d783f35a5cc7172260"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.801/magpie-cli-linux-arm64"
      sha256 "cf8f4f00583664be3806fa1d0b9d3e16717e7721a5dda9f7dc8cd23123f53f0c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.801/magpie-cli-linux-amd64"
      sha256 "4b946276c1db70f3e2cb36714a3ff477708f36a05f19d0c88544ae94d95396b1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
