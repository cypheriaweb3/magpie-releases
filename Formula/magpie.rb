class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.308/magpie-cli-darwin-arm64"
      sha256 "383cda0e75a5282ee9fceb77f746c6c818f9cdbc41230fff922e40814e3565aa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.308/magpie-cli-darwin-amd64"
      sha256 "191b13759dfc92bee5eda352bc375ac4e33c4d938ff198896a3c3dc20a391757"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.308/magpie-cli-linux-arm64"
      sha256 "5cb884da25d72a88ac472ebbb65abc397cc1a50be171007beccfd288d296a721"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.308/magpie-cli-linux-amd64"
      sha256 "07ea5161f7c6da1d0669009973a3a07005fa8f160b70727f7c612098d13aca0c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
