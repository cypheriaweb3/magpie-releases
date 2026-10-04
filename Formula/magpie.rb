class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.879/magpie-cli-darwin-arm64"
      sha256 "9580187de9e67b7816ee8fb651a16fda773bc3a77b4c9d990ad18ee02d27c560"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.879/magpie-cli-darwin-amd64"
      sha256 "b4424952fa30c44c1099a7f32e370049e9fbbe1e21744154d777e0277478340a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.879/magpie-cli-linux-arm64"
      sha256 "e6dd2072ce1882f5a5b6715dab79d651bd32605e3a54c8d3b35b5f6256999674"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.879/magpie-cli-linux-amd64"
      sha256 "7452f52efa5b8c78e27f8bbc3e3b91671b25216ce311dc40839636d7bd737a12"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
