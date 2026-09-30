class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.482/magpie-cli-darwin-arm64"
      sha256 "362b15c018ecba761fba7c9ed3db0e61e5846435654e3e6d134a6ba2da9d03d1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.482/magpie-cli-darwin-amd64"
      sha256 "69235915c81b7605e3daf40722bd10965e67cd7d01daa004746437833c442ae4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.482/magpie-cli-linux-arm64"
      sha256 "8b32eaeab852b85bc15bbb725abb30c22e29eb800f4eb4002c81e8e89c65b3ba"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.482/magpie-cli-linux-amd64"
      sha256 "698d4be71330a1af661badda8d911f78155019dd97827fd3d0ff4266f380c021"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
