class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.215/magpie-cli-darwin-arm64"
      sha256 "0fe48bcee6f0c5c2bf44c1a331e40d98645fabb9adab40f56823d7fb4f0cafcd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.215/magpie-cli-darwin-amd64"
      sha256 "5cf16a81342e77aa15d55ad5e8bd4e79fbc0b2ada436eb1ac4f288250ad56722"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.215/magpie-cli-linux-arm64"
      sha256 "c9c52608208a8f7db3901ba648981c1d376ee5095da1b4c768fe2a16c72db279"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.215/magpie-cli-linux-amd64"
      sha256 "cf111981485b62e26a3fbbd530e3c512b25587850fec8bf3426d184a78470221"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
