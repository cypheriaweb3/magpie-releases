class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.256/magpie-cli-darwin-arm64"
      sha256 "bc13684c177553a681ffdb64053bb1c023fd3fd44dbc3279e3d7209c811fd8df"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.256/magpie-cli-darwin-amd64"
      sha256 "f113e56b785ae4ab517293542191026ffd19faadc549fae20829d22216040803"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.256/magpie-cli-linux-arm64"
      sha256 "da3dd37f496750cc5adb4e2a654cb54f1a1c137650e82629ae0af90689d479ae"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.256/magpie-cli-linux-amd64"
      sha256 "5156b8f79d7600664216182d4381803f7c71a57ea37c206c75926d602a2cd273"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
