class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.262/magpie-cli-darwin-arm64"
      sha256 "6c810f7d51f89dec47317c9d21ceb8f146d0f85f3b715e650f0a475a03c46211"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.262/magpie-cli-darwin-amd64"
      sha256 "e9e8403626299ba6e390b6494012b5396712bc2886cf75c74790e92ba0e305ea"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.262/magpie-cli-linux-arm64"
      sha256 "dae97df21c1bf947f03c92b9741f3852fa5adffd081bed204aa95915fcce34d0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.262/magpie-cli-linux-amd64"
      sha256 "fe410eaf38d8ae4a1ae4c704cb1c836bc8faec34399768365e97e573be1e00fc"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
