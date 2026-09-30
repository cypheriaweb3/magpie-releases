class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.545/magpie-cli-darwin-arm64"
      sha256 "e655e4cf7023d6a598de9dc30871584faa6d533b07a7d514d2156e31dedf9d8d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.545/magpie-cli-darwin-amd64"
      sha256 "aa3b42cf5ea4912cc3fd0333ba3ab82e3d83231b0cdbf67c66a550d8ce839204"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.545/magpie-cli-linux-arm64"
      sha256 "6797229881a7b64ca80bd73ddb83b5442a7f8d8195506ddd8caf7021dba01f84"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.545/magpie-cli-linux-amd64"
      sha256 "371cb6228ab805799009eb0ac2cde7985eb23adf64e8c822dc1632e0fd4e1f04"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
