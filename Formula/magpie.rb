class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.661/magpie-cli-darwin-arm64"
      sha256 "33636c8c1dcceebb52e865c6c843d90eac30d94d465ba0e042e1f29dfc509d88"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.661/magpie-cli-darwin-amd64"
      sha256 "7793eab288881742ced15f473678e762a8b8d35e299e274051d977abb576e9d3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.661/magpie-cli-linux-arm64"
      sha256 "40ee0e1a06551e8a1fa60c967c1dd560604731613fd49c52d77c2f19ebc00f9b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.661/magpie-cli-linux-amd64"
      sha256 "b4094ed52fcd7c6c4d7cf177fb279c3fba55a6c77c55ad3f33d9842bc7985f55"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
