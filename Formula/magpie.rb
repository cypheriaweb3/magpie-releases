class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.620/magpie-cli-darwin-arm64"
      sha256 "6575221416c157bacb361fcb261f07d9d0f34020a0de269114073246630fba21"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.620/magpie-cli-darwin-amd64"
      sha256 "a50f9fe517cc50554bfbb5def59eab4437b17922c959c8a3e60c30e0f7dd841c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.620/magpie-cli-linux-arm64"
      sha256 "54fceb29ab0dd44736639e463acdafebd657c8c5cf12f4f9e33d13844b07b0a3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.620/magpie-cli-linux-amd64"
      sha256 "88fad54e792220f5516d353bb53d49f03a28aa622043695362ff1b35410b38d6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
