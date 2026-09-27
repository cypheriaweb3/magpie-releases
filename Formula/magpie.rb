class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.179/magpie-cli-darwin-arm64"
      sha256 "b5a4daf0baaf67ae944192266a4f86cdedeabf06a5689046260850b29a9438a9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.179/magpie-cli-darwin-amd64"
      sha256 "9547c50da3d6c0df9be75436421749e28211f10d17b78587fc86dcafd4efac87"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.179/magpie-cli-linux-arm64"
      sha256 "7f9216face1ba6a8f6cf6652cac3a2a887af034ceb7659c0dff6ee094f6c7ee8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.179/magpie-cli-linux-amd64"
      sha256 "4a828b261dbb0092b24dd7f91f20db525eaa96cc166c7f4994e970cfb2edb6ea"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
