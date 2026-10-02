class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.674/magpie-cli-darwin-arm64"
      sha256 "1184b82be4226278d7b80fd0d4f370d45a354d69ba3dd6fa15c0ea00609d48f8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.674/magpie-cli-darwin-amd64"
      sha256 "338adbfc256a8f1d657ab10178627e2a54718dc3f67c13a2f124bb42e36eb176"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.674/magpie-cli-linux-arm64"
      sha256 "4a92e47ef75eeeeb700809f7d154756e85a9d2e3fa415c99e5e7010702444530"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.674/magpie-cli-linux-amd64"
      sha256 "c8569cebe380d160a1666aacea7d0b4e4d8c55c52c95128db376735113bc3451"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
