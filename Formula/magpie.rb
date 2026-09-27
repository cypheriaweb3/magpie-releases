class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.169/magpie-cli-darwin-arm64"
      sha256 "41f7b51003140ea11b4ed88f29666457a37d4e3804c382b91e7f8721e0717609"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.169/magpie-cli-darwin-amd64"
      sha256 "55065fe4f8b8342afd02fb116d8050857fed9f55c7cf078397f55820766bf565"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.169/magpie-cli-linux-arm64"
      sha256 "eb4258c5008ddff0dda00ad87b7afa0c6e596bfd5fbd95bb0165b72ec3a2e82c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.169/magpie-cli-linux-amd64"
      sha256 "b04dd01e5b19e403b1562631a905e0fababca66936d2457285e4f5971f89456f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
