class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.729/magpie-cli-darwin-arm64"
      sha256 "e85bc8e6d82c31be200da76539befc32153e7db50772d52082dfe38b4010a66f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.729/magpie-cli-darwin-amd64"
      sha256 "704720291cc95c3937dd9cf131cc93fbf337966d20e12c4ce277db9214b617a4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.729/magpie-cli-linux-arm64"
      sha256 "90d1ec31119cacf3feaaffc919ffc556e9575bbe0dfdba26714014e37821979e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.729/magpie-cli-linux-amd64"
      sha256 "e74e34df1c553b7473af288e8d975be2821d328f424266a0952482cd86f4b455"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
