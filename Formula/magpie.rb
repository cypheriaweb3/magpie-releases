class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.559/magpie-cli-darwin-arm64"
      sha256 "5e74099bd1b7fd93ce94944f3d31c2cec3c9d1b2705a618e487428740f9abe56"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.559/magpie-cli-darwin-amd64"
      sha256 "651c40d5062811ca882a5b5c560215406231960d89feb935e055d9c495e9da27"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.559/magpie-cli-linux-arm64"
      sha256 "02c465c9def76a2bca698c350f65d432ef13d40bafcd045c31ca764e6319aa25"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.559/magpie-cli-linux-amd64"
      sha256 "6393b05f826ffb75d6613bf3051bf08865c3a1ca0c04b17401a0afa7381bdd39"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
