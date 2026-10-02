class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.619/magpie-cli-darwin-arm64"
      sha256 "4cccefa2d918734b709cc5b686dddfffdcd9c7dc55d67efeecc756c5211804bf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.619/magpie-cli-darwin-amd64"
      sha256 "7bc2fa277679c5489ad77a8fd6432b276af58b9aec08fd9a39fa3ae16fceb025"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.619/magpie-cli-linux-arm64"
      sha256 "eb49194a8d58857133ebd32d3d018bb95a451fa6933faf1437416384d179add1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.619/magpie-cli-linux-amd64"
      sha256 "a1cc9bb51ab12b99844f8da7d277659cd002add3050e107a217cffc7da55a554"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
