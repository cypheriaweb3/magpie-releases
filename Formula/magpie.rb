class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.505/magpie-cli-darwin-arm64"
      sha256 "73f8199b838e84dba8730a738e55294988d2d0b83922e68e2bdf7b7bfe6d1d92"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.505/magpie-cli-darwin-amd64"
      sha256 "9aaf56681a8d5838399e0647ccfbb493d569767e6ab39739d233616b6cec5063"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.505/magpie-cli-linux-arm64"
      sha256 "aeec81bd230e01e7ec2783fbb88a8875a9dfa3cf981cddecb8d835617cbc1d23"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.505/magpie-cli-linux-amd64"
      sha256 "eb7b39f7911c314b786cd1286f63ffbb9db515e8969873956422c876418ca5b6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
