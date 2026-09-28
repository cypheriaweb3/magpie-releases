class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.349/magpie-cli-darwin-arm64"
      sha256 "cc357ab4b379a12ac618594af69c1bb5e419d3733bbcdbce658ca2332ca0c5bd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.349/magpie-cli-darwin-amd64"
      sha256 "5a6ab995c58eca6b88ac7af451d39bebe719522535f40f5a9bccda6063ab46b6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.349/magpie-cli-linux-arm64"
      sha256 "af10a9775c89263e75e0c0123bad11baf312aa906971f2247c6a795ec1eff571"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.349/magpie-cli-linux-amd64"
      sha256 "03583f218885a78862b7b3bf60a4a1279e1e8fc743d345e106f051fece65deec"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
