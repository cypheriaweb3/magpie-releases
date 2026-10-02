class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.670/magpie-cli-darwin-arm64"
      sha256 "0aed57a9685da6d6c80a6b283a825774a8219220386cb13acf52c2800a34bc59"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.670/magpie-cli-darwin-amd64"
      sha256 "d9006530cf4d42d30fe8207a2e80fa0c939b7eae962afbb0ba5c4a11a0db1ce3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.670/magpie-cli-linux-arm64"
      sha256 "d028a8db7e28d108c6e5f771d3fc140a7d166b2cd4ee9830187f0f513bcf293d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.670/magpie-cli-linux-amd64"
      sha256 "3fb515935f943371f36a2e29e945a003247e71650606703157a44d8cace10678"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
