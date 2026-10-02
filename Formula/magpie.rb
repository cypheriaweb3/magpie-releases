class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.664/magpie-cli-darwin-arm64"
      sha256 "503cfb6d93b39d20337fc53b7c9bb26598c1899deac9827674677f834d64d055"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.664/magpie-cli-darwin-amd64"
      sha256 "472ca7d74b0b389c1cf67bada224c0c860f7e69968ce59ccbd31941c096fdbfc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.664/magpie-cli-linux-arm64"
      sha256 "3ce695add6c12f272eacb9f9a565eaa5baa37aa0de137b2515bd893f1b4746a0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.664/magpie-cli-linux-amd64"
      sha256 "b972646b080e95b157e1e8165c6664f71e7aac5bd8c382f8ebf29d8496f7a809"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
