class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.197/magpie-cli-darwin-arm64"
      sha256 "16d4302dec7ec71ced9db12e52fa3920cfd6daf1dda6584caee6f3e83811a70d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.197/magpie-cli-darwin-amd64"
      sha256 "ff77bd4a087303e640fec56cf54319492ecb204d295f8e09a4407c41139de656"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.197/magpie-cli-linux-arm64"
      sha256 "f5715803263d6a9917ca448e0eccd7968b1aa1d8be2ae5e4038523c9add1cd00"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.197/magpie-cli-linux-amd64"
      sha256 "0323043592772ee4399be37b163ca036b974569c99a8662d53e987a263a2a2aa"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
