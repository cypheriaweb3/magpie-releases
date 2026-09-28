class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.306/magpie-cli-darwin-arm64"
      sha256 "5b5212f690b3db40a18845089afc766584faed8bdbe26de17d5b275ec046b391"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.306/magpie-cli-darwin-amd64"
      sha256 "0e5d6faa6ba4bbec395f597e68e2f0584847acf056486c39bd8f77388e6702d1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.306/magpie-cli-linux-arm64"
      sha256 "c876be6cd9a616e4bf3136adc24b8b51d0ccf8b59ef938c521ed4ec9ebf9a458"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.306/magpie-cli-linux-amd64"
      sha256 "9cdcc9465aa53af8f52dca88200c86fc3be71897de7c9e483625c2e7e2c945b5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
