class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.721/magpie-cli-darwin-arm64"
      sha256 "60ed89b3f043c232d3d320c976b3a76af4a1476d6f11a6bc1cbc039be4eaaa77"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.721/magpie-cli-darwin-amd64"
      sha256 "bacd9c501b2ff14563a6eae03ffe138fa536c0fb0cb5ee09572f6be674ccbec0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.721/magpie-cli-linux-arm64"
      sha256 "da7d7beca3b85bd798309d5fcb82edbe0edfbde8a135408cdd7bfcea1ae1642a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.721/magpie-cli-linux-amd64"
      sha256 "2b28f088a36eec39baa69c56782351e31be7899c5a2971fc9ddea2c2c88a0971"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
