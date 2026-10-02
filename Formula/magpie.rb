class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.657/magpie-cli-darwin-arm64"
      sha256 "c0fd967141a054b501fb51fed900403a0b02e010fe108552206728227c54a626"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.657/magpie-cli-darwin-amd64"
      sha256 "332b23cc6df5ace9c252dc1419f474dfeb75f6f9b788fad553ea8ac8a655810f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.657/magpie-cli-linux-arm64"
      sha256 "b24a585cd16afec5a66cb879f2ec1263a83bad3535d6053217d4de13078f4b0f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.657/magpie-cli-linux-amd64"
      sha256 "b606a1c1db56c02381fe8148f820300777edece825e7962f76a88f8b1bcadf50"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
