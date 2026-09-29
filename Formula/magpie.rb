class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.375/magpie-cli-darwin-arm64"
      sha256 "61d1588b50634ec27ab3b7bed57a768f953f68dceea42a9135d9300877a75cee"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.375/magpie-cli-darwin-amd64"
      sha256 "85d975213ad6645cbcc14b102753c5ed24ecadde20141f093a50b66bb8361655"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.375/magpie-cli-linux-arm64"
      sha256 "3b88bf62e3de49099070ff006760ed6b9bf7caea28add70429c2f6eadcb489b6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.375/magpie-cli-linux-amd64"
      sha256 "03b4af36d7394111c060341b1b773dbf6105d39f52fc0564d2e0403d46497fa0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
