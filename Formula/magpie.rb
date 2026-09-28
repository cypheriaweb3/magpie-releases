class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.268/magpie-cli-darwin-arm64"
      sha256 "378a264e77024894f88f8a7bc6736c394ade59c24c779cfdd9eda77efc64846d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.268/magpie-cli-darwin-amd64"
      sha256 "194bad060f03d5ed96828a0a47371c5ece9f186149079615713189263383a67f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.268/magpie-cli-linux-arm64"
      sha256 "8eed441e2f71dba3ee25fac83f6244f980913f0db60becbade6b4e2a9a0f7488"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.268/magpie-cli-linux-amd64"
      sha256 "2841d1d314301b7f3122a8ffc4ac1b7e4706eb7fc41045b0339a88d7cf74cf5e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
