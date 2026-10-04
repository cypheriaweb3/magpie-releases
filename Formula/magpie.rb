class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.863/magpie-cli-darwin-arm64"
      sha256 "f4f93a266e6718701af49dced7e5e2dd4a072120e7928a2e5d038587e8efad94"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.863/magpie-cli-darwin-amd64"
      sha256 "ed53fd060e8bc669449cc4335a27599c61e5dbd960a984122715b4d85cad5129"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.863/magpie-cli-linux-arm64"
      sha256 "73fb4bb1f5ae4609b832d38fa41d490811f5c86a8c3ee8a78f30bac58e51e238"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.863/magpie-cli-linux-amd64"
      sha256 "59775a135c4ec140509be819bd378d5d43cb48cb15677ff30d8a58997073a930"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
